"""
ML Recommender Engine - SmartML Advisor
Scores and ranks ML algorithms based on dataset characteristics
"""
from typing import List, Dict, Any, Tuple


class MLRecommender:
    """
    Rule-based + scoring engine that recommends ML algorithms
    based on dataset profile features.
    """

    def score_algorithm(self, algo: Dict, profile: Dict) -> Tuple[float, List[Dict]]:
        """
        Score an algorithm against dataset profile.
        Returns (score 0-100, list of reasons)
        """
        score = 50.0  # base score
        reasons = []

        rows = profile.get("total_rows", 0)
        cols = profile.get("total_columns", 0)
        numeric_cols = profile.get("numeric_columns", 0)
        categorical_cols = profile.get("categorical_columns", 0)
        missing_pct = profile.get("missing_value_percentage", 0)
        problem_type = profile.get("problem_type", "unknown")
        is_imbalanced = profile.get("is_imbalanced", False)
        class_count = profile.get("class_count") or 0

        algo_category = algo.get("category_name", "").lower()
        min_samples = algo.get("min_samples", 50)
        handles_missing = algo.get("handles_missing", False)
        handles_categorical = algo.get("handles_categorical", False)
        handles_imbalanced = algo.get("handles_imbalanced", False)
        requires_scaling = algo.get("requires_scaling", True)
        complexity = algo.get("complexity", "medium")

        # ── Problem type match ──────────────────────────────
        if problem_type == "classification" and "classification" in algo_category:
            score += 25
            reasons.append({"type": "positive", "text": f"ডেটাসেটটি Classification সমস্যা এবং {algo['name']} Classification অ্যালগরিদম।", "weight": 1.5})
        elif problem_type == "regression" and "regression" in algo_category:
            score += 25
            reasons.append({"type": "positive", "text": f"ডেটাসেটটি Regression সমস্যা এবং {algo['name']} Regression এর জন্য উপযুক্ত।", "weight": 1.5})
        elif problem_type == "clustering" and "clustering" in algo_category:
            score += 25
            reasons.append({"type": "positive", "text": f"লেবেলবিহীন ডেটায় {algo['name']} Clustering করতে পারে।", "weight": 1.5})
        elif problem_type not in ("unknown",) and algo_category not in (problem_type,):
            score -= 30
            reasons.append({"type": "negative", "text": f"এই অ্যালগরিদম {problem_type} সমস্যার জন্য উপযুক্ত নয়।", "weight": 1.5})

        # ── Sample size ──────────────────────────────────────
        if rows >= min_samples * 3:
            score += 8
            reasons.append({"type": "positive", "text": f"ডেটাসেটে {rows:,} rows আছে, {algo['name']} এর জন্য যথেষ্ট।", "weight": 1.0})
        elif rows >= min_samples:
            score += 3
        else:
            score -= 15
            reasons.append({"type": "negative", "text": f"{algo['name']} এর জন্য কমপক্ষে {min_samples:,} rows দরকার, কিন্তু ডেটায় মাত্র {rows:,} rows আছে।", "weight": 1.2})

        # ── Missing values ───────────────────────────────────
        if missing_pct > 10:
            if handles_missing:
                score += 10
                reasons.append({"type": "positive", "text": f"ডেটায় {missing_pct:.1f}% missing values আছে এবং {algo['name']} সেটি handle করতে পারে।", "weight": 1.0})
            else:
                score -= 12
                reasons.append({"type": "negative", "text": f"ডেটায় {missing_pct:.1f}% missing values আছে কিন্তু {algo['name']} সরাসরি handle করতে পারে না। Imputation দরকার হবে।", "weight": 1.0})
        elif missing_pct == 0:
            reasons.append({"type": "positive", "text": "ডেটায় কোনো missing value নেই, সব অ্যালগরিদমের জন্য ভালো।", "weight": 0.5})

        # ── Categorical features ─────────────────────────────
        if categorical_cols > 0:
            if handles_categorical:
                score += 8
                reasons.append({"type": "positive", "text": f"{categorical_cols}টি categorical column আছে এবং {algo['name']} সেটি সরাসরি handle করতে পারে।", "weight": 1.0})
            else:
                score -= 8
                reasons.append({"type": "negative", "text": f"{categorical_cols}টি categorical column আছে, {algo['name']} ব্যবহারের আগে encoding প্রয়োজন।", "weight": 0.8})

        # ── Imbalanced data ──────────────────────────────────
        if is_imbalanced:
            if handles_imbalanced:
                score += 10
                reasons.append({"type": "positive", "text": f"ডেটাসেট imbalanced এবং {algo['name']} imbalanced data handle করতে সক্ষম।", "weight": 1.0})
            else:
                score -= 10
                reasons.append({"type": "negative", "text": f"ডেটাসেট imbalanced। {algo['name']} ব্যবহারে SMOTE বা class_weight প্রয়োজন হতে পারে।", "weight": 0.8})

        # ── High dimensional data ────────────────────────────
        if cols > 50:
            if algo.get("short_name") in ("RF", "XGB", "GBM", "RFR"):
                score += 8
                reasons.append({"type": "positive", "text": f"উচ্চ-মাত্রিক ডেটায় ({cols} features) {algo['name']} ভালো পারফর্ম করে।", "weight": 1.0})
            elif algo.get("short_name") in ("KNN",):
                score -= 10
                reasons.append({"type": "negative", "text": f"অনেক বেশি features ({cols}) থাকলে KNN এর পারফরম্যান্স কমে যায় (Curse of Dimensionality)।", "weight": 1.0})

        # ── Large dataset performance ────────────────────────
        if rows > 100000:
            if complexity == "high":
                score -= 5
                reasons.append({"type": "neutral", "text": f"বড় ডেটাসেটে ({rows:,} rows) {algo['name']} ট্রেনিং সময় বেশি নিতে পারে।", "weight": 0.7})
            elif complexity == "low":
                score += 5
                reasons.append({"type": "positive", "text": f"বড় ডেটাসেটে {algo['name']} দ্রুত কাজ করে।", "weight": 0.7})

        # ── Few features bonus for simple models ─────────────
        if cols <= 10 and numeric_cols >= cols * 0.7:
            if algo.get("short_name") in ("LR", "LinReg", "Ridge"):
                score += 5
                reasons.append({"type": "positive", "text": f"কম features ({cols}) এবং বেশিরভাগ numeric হওয়ায় Linear model ভালো কাজ করতে পারে।", "weight": 0.8})

        score = max(0.0, min(100.0, score))
        return round(score, 2), reasons

    def recommend(
        self,
        algorithms_with_category: List[Dict],
        profile: Dict,
        top_n: int = 5
    ) -> List[Dict]:
        """
        Score all algorithms, filter by problem type, return top N ranked results.
        """
        problem_type = profile.get("problem_type", "unknown")

        # Filter: only show relevant categories
        type_map = {
            "classification": ["classification"],
            "regression": ["regression"],
            "clustering": ["clustering", "dimensionality reduction"],
            "unknown": ["classification", "regression", "clustering"],
        }
        allowed_cats = type_map.get(problem_type, ["classification", "regression", "clustering"])

        scored = []
        for algo in algorithms_with_category:
            cat_name = algo.get("category_name", "").lower()
            if not any(c in cat_name for c in allowed_cats):
                continue
            score, reasons = self.score_algorithm(algo, profile)
            scored.append({
                "algorithm": algo,
                "score": score,
                "reasons": reasons,
            })

        scored.sort(key=lambda x: x["score"], reverse=True)
        results = []
        for rank, item in enumerate(scored[:top_n], start=1):
            results.append({
                "rank": rank,
                "algorithm_id": item["algorithm"]["id"],
                "algorithm_name": item["algorithm"]["name"],
                "short_name": item["algorithm"]["short_name"],
                "category": item["algorithm"]["category_name"],
                "confidence_score": item["score"],
                "suitability_score": item["score"],
                "strengths": item["algorithm"].get("strengths", ""),
                "weaknesses": item["algorithm"].get("weaknesses", ""),
                "best_for": item["algorithm"].get("best_for", ""),
                "complexity": item["algorithm"].get("complexity", "medium"),
                "interpretability": item["algorithm"].get("interpretability", "medium"),
                "reasons": item["reasons"],
            })
        return results


    def generate_preprocessing_tips(self, profile: Dict) -> str:
        tips = []
        if profile.get("missing_value_percentage", 0) > 0:
            tips.append("• Missing Values: Numerical কলামে mean/median imputation এবং categorical কলামে mode বা 'Unknown' দিয়ে পূরণ করুন।")
        if profile.get("categorical_columns", 0) > 0:
            tips.append("• Encoding: Categorical কলামগুলো Label Encoding বা One-Hot Encoding করুন।")
        if profile.get("numeric_columns", 0) > 0:
            tips.append("• Scaling: Numerical কলামগুলো StandardScaler বা MinMaxScaler দিয়ে normalize করুন।")
        if profile.get("duplicate_row_percentage", 0) > 1:
            tips.append("• Duplicates: ডুপ্লিকেট rows remove করুন।")
        if profile.get("is_imbalanced"):
            tips.append("• Imbalanced Data: SMOTE, RandomOverSampler অথবা class_weight='balanced' ব্যবহার করুন।")
        if not tips:
            tips.append("• ডেটাসেটটি ভালো অবস্থায় আছে। সরাসরি মডেল ট্রেন করা যাবে।")
        return "\n".join(tips)

    def calculate_data_quality_score(self, profile: Dict) -> float:
        score = 100.0
        score -= min(profile.get("missing_value_percentage", 0) * 1.5, 30)
        score -= min(profile.get("duplicate_row_percentage", 0) * 0.5, 10)
        if profile.get("total_rows", 0) < 100:
            score -= 20
        elif profile.get("total_rows", 0) < 500:
            score -= 10
        if profile.get("is_imbalanced"):
            score -= 10
        return max(0.0, round(score, 2))
