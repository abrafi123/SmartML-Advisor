"""
Data Profiler Service - SmartML Advisor
Analyzes uploaded files and extracts statistical features
"""
import pandas as pd
import numpy as np
import json
import re
from typing import Dict, Any, Tuple, Optional
from scipy import stats


class DataProfiler:
    """Profiles a dataset and extracts features for ML recommendation."""

    SAMPLE_LIMIT = 50000  # rows to load for large files

    def load_file(self, file_path: str, file_type: str) -> pd.DataFrame:
        """Load file into DataFrame based on type."""
        try:
            if file_type == "csv":
                df = pd.read_csv(file_path, nrows=self.SAMPLE_LIMIT, low_memory=False)
            elif file_type == "excel":
                df = pd.read_excel(file_path, nrows=self.SAMPLE_LIMIT)
            elif file_type == "json":
                df = pd.read_json(file_path)
                if len(df) > self.SAMPLE_LIMIT:
                    df = df.head(self.SAMPLE_LIMIT)
            else:
                raise ValueError(f"Unsupported file type: {file_type}")
            return df
        except Exception as e:
            raise ValueError(f"Failed to load file: {str(e)}")

    def infer_column_type(self, series: pd.Series) -> str:
        """Infer the semantic type of a column."""
        if pd.api.types.is_bool_dtype(series):
            return "boolean"
        if pd.api.types.is_numeric_dtype(series):
            return "numeric"
        if pd.api.types.is_datetime64_any_dtype(series):
            return "datetime"
        # Try parsing as datetime
        if series.dtype == object:
            sample = series.dropna().head(20).astype(str)
            date_pattern = r'\d{4}[-/]\d{2}[-/]\d{2}'
            if sample.str.match(date_pattern).sum() > 10:
                return "datetime"
            unique_ratio = series.nunique() / max(len(series), 1)
            avg_len = sample.str.len().mean() if len(sample) > 0 else 0
            if avg_len > 50 or unique_ratio > 0.9:
                return "text"
            return "categorical"
        return "categorical"

    def get_column_stats(self, series: pd.Series, inferred_type: str) -> Dict[str, Any]:
        """Calculate statistics for a single column."""
        total = len(series)
        missing = series.isna().sum()
        unique = series.nunique()

        stats_dict = {
            "missing_count": int(missing),
            "missing_percentage": round(float(missing / total * 100), 2) if total > 0 else 0,
            "unique_count": int(unique),
            "unique_percentage": round(float(unique / total * 100), 2) if total > 0 else 0,
            "most_frequent_value": None,
            "mean_value": None,
            "std_value": None,
            "min_value": None,
            "max_value": None,
            "median_value": None,
            "skewness": None,
            "kurtosis": None,
        }

        # Most frequent value
        mode_result = series.mode()
        if len(mode_result) > 0:
            stats_dict["most_frequent_value"] = str(mode_result.iloc[0])[:255]

        # Numeric stats
        if inferred_type == "numeric":
            clean = series.dropna()
            if len(clean) > 0:
                try:
                    stats_dict["mean_value"] = float(round(clean.mean(), 6))
                    stats_dict["std_value"] = float(round(clean.std(), 6))
                    stats_dict["min_value"] = float(round(clean.min(), 6))
                    stats_dict["max_value"] = float(round(clean.max(), 6))
                    stats_dict["median_value"] = float(round(clean.median(), 6))
                    if len(clean) >= 3:
                        stats_dict["skewness"] = float(round(clean.skew(), 4))
                        stats_dict["kurtosis"] = float(round(clean.kurtosis(), 4))
                except Exception:
                    pass

        return stats_dict

    def detect_problem_type(self, df: pd.DataFrame) -> Tuple[str, Optional[str], Optional[int]]:
        """
        Try to detect if it's classification, regression, or clustering.
        Returns (problem_type, target_column, class_count)
        """
        # Look for common target column names
        target_keywords = ['target', 'label', 'class', 'output', 'y', 'result', 'category', 'outcome']
        target_col = None

        for col in df.columns:
            if col.lower() in target_keywords:
                target_col = col
                break

        # If not found, pick the last column
        if target_col is None and len(df.columns) > 1:
            target_col = df.columns[-1]

        if target_col is None:
            return "clustering", None, None

        target = df[target_col]
        n_unique = target.nunique()
        inferred = self.infer_column_type(target)

        if inferred == "numeric":
            if n_unique <= 10:
                return "classification", target_col, n_unique
            return "regression", target_col, None
        elif inferred in ("categorical", "boolean"):
            return "classification", target_col, n_unique

        return "clustering", None, None

    def check_imbalance(self, df: pd.DataFrame, target_col: str) -> bool:
        """Check if target column is imbalanced (for classification)."""
        if target_col not in df.columns:
            return False
        counts = df[target_col].value_counts(normalize=True)
        if len(counts) < 2:
            return False
        return counts.min() < 0.2  # minority class < 20%

    def profile(self, file_path: str, file_type: str) -> Dict[str, Any]:
        """Full profiling pipeline. Returns all stats as dict."""
        df = self.load_file(file_path, file_type)

        total_rows = len(df)
        total_cols = len(df.columns)
        total_cells = total_rows * total_cols

        missing_total = df.isna().sum().sum()
        missing_pct = round(missing_total / total_cells * 100, 2) if total_cells > 0 else 0
        duplicate_pct = round(df.duplicated().sum() / total_rows * 100, 2) if total_rows > 0 else 0
        memory_mb = round(df.memory_usage(deep=True).sum() / (1024 ** 2), 2)

        col_types = {col: self.infer_column_type(df[col]) for col in df.columns}
        numeric_cols = sum(1 for t in col_types.values() if t == "numeric")
        categorical_cols = sum(1 for t in col_types.values() if t == "categorical")
        datetime_cols = sum(1 for t in col_types.values() if t == "datetime")
        text_cols = sum(1 for t in col_types.values() if t == "text")

        problem_type, target_col, class_count = self.detect_problem_type(df)
        is_imbalanced = False
        if target_col and problem_type == "classification":
            is_imbalanced = self.check_imbalance(df, target_col)

        column_stats = []
        for col in df.columns:
            inferred = col_types[col]
            col_stat = self.get_column_stats(df[col], inferred)
            col_stat["column_name"] = col
            col_stat["data_type"] = str(df[col].dtype)
            col_stat["inferred_type"] = inferred
            column_stats.append(col_stat)

        return {
            "profile": {
                "total_rows": total_rows,
                "total_columns": total_cols,
                "numeric_columns": numeric_cols,
                "categorical_columns": categorical_cols,
                "datetime_columns": datetime_cols,
                "text_columns": text_cols,
                "missing_value_percentage": missing_pct,
                "duplicate_row_percentage": duplicate_pct,
                "target_column": target_col,
                "problem_type": problem_type,
                "is_imbalanced": is_imbalanced,
                "class_count": class_count,
                "memory_usage_mb": memory_mb,
            },
            "column_stats": column_stats,
            "dataframe_preview": df.head(10).to_dict(orient="records"),
        }
