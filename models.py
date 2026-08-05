"""
SQLAlchemy Models - SmartML Advisor
All 12 database tables as Python classes
"""
from sqlalchemy import (
    Column, Integer, String, Text, Boolean, Enum,
    DECIMAL, BigInteger, JSON, ForeignKey, TIMESTAMP, CheckConstraint
)
from sqlalchemy.orm import relationship
from sqlalchemy.sql import func
from database import Base


# ─────────────────────────────────────────────
# TABLE 1: users
# ─────────────────────────────────────────────
class User(Base):
    __tablename__ = "users"

    id = Column(Integer, primary_key=True, autoincrement=True)
    username = Column(String(50), unique=True, nullable=False)
    email = Column(String(100), unique=True, nullable=False)
    password_hash = Column(String(255), nullable=False)
    full_name = Column(String(100))
    role = Column(Enum("admin", "user"), default="user")
    is_active = Column(Boolean, default=True)
    profile_picture = Column(String(255))
    created_at = Column(TIMESTAMP, server_default=func.now())
    updated_at = Column(TIMESTAMP, server_default=func.now(), onupdate=func.now())

    sessions = relationship("UserSession", back_populates="user", cascade="all, delete")
    uploads = relationship("FileUpload", back_populates="user", cascade="all, delete")
    recommendations = relationship("Recommendation", back_populates="user")
    reports = relationship("AnalysisReport", back_populates="user")
    feedbacks = relationship("UserFeedback", back_populates="user")
    logs = relationship("ActivityLog", back_populates="user")


# ─────────────────────────────────────────────
# TABLE 2: user_sessions
# ─────────────────────────────────────────────
class UserSession(Base):
    __tablename__ = "user_sessions"

    id = Column(Integer, primary_key=True, autoincrement=True)
    user_id = Column(Integer, ForeignKey("users.id", ondelete="CASCADE"), nullable=False)
    token = Column(String(500), unique=True, nullable=False)
    ip_address = Column(String(45))
    user_agent = Column(String(255))
    is_active = Column(Boolean, default=True)
    expires_at = Column(TIMESTAMP, nullable=False)
    created_at = Column(TIMESTAMP, server_default=func.now())

    user = relationship("User", back_populates="sessions")


# ─────────────────────────────────────────────
# TABLE 3: algorithm_categories
# ─────────────────────────────────────────────
class AlgorithmCategory(Base):
    __tablename__ = "algorithm_categories"

    id = Column(Integer, primary_key=True, autoincrement=True)
    name = Column(String(100), unique=True, nullable=False)
    description = Column(Text)
    use_case = Column(Text)
    icon = Column(String(50))
    created_at = Column(TIMESTAMP, server_default=func.now())

    algorithms = relationship("MLAlgorithm", back_populates="category")


# ─────────────────────────────────────────────
# TABLE 4: ml_algorithms
# ─────────────────────────────────────────────
class MLAlgorithm(Base):
    __tablename__ = "ml_algorithms"

    id = Column(Integer, primary_key=True, autoincrement=True)
    category_id = Column(Integer, ForeignKey("algorithm_categories.id", ondelete="CASCADE"), nullable=False)
    name = Column(String(100), nullable=False)
    short_name = Column(String(50))
    description = Column(Text)
    strengths = Column(Text)
    weaknesses = Column(Text)
    best_for = Column(Text)
    min_samples = Column(Integer, default=50)
    handles_missing = Column(Boolean, default=False)
    handles_categorical = Column(Boolean, default=False)
    handles_imbalanced = Column(Boolean, default=False)
    requires_scaling = Column(Boolean, default=True)
    complexity = Column(Enum("low", "medium", "high"), default="medium")
    interpretability = Column(Enum("low", "medium", "high"), default="medium")
    created_at = Column(TIMESTAMP, server_default=func.now())

    category = relationship("AlgorithmCategory", back_populates="algorithms")
    recommendations = relationship("Recommendation", back_populates="algorithm")


# ─────────────────────────────────────────────
# TABLE 5: file_uploads
# ─────────────────────────────────────────────
class FileUpload(Base):
    __tablename__ = "file_uploads"

    id = Column(Integer, primary_key=True, autoincrement=True)
    user_id = Column(Integer, ForeignKey("users.id", ondelete="CASCADE"), nullable=False)
    original_filename = Column(String(255), nullable=False)
    stored_filename = Column(String(255), unique=True, nullable=False)
    file_type = Column(Enum("csv", "excel", "json", "xml", "text"), nullable=False)
    file_size_bytes = Column(BigInteger, nullable=False)
    file_path = Column(String(500), nullable=False)
    upload_status = Column(Enum("pending", "processing", "completed", "failed"), default="pending")
    error_message = Column(Text)
    created_at = Column(TIMESTAMP, server_default=func.now())

    user = relationship("User", back_populates="uploads")
    dataset_profile = relationship("DatasetProfile", back_populates="upload", uselist=False, cascade="all, delete")
    recommendations = relationship("Recommendation", back_populates="upload", cascade="all, delete")
    reports = relationship("AnalysisReport", back_populates="upload", cascade="all, delete")


# ─────────────────────────────────────────────
# TABLE 6: dataset_profiles
# ─────────────────────────────────────────────
class DatasetProfile(Base):
    __tablename__ = "dataset_profiles"

    id = Column(Integer, primary_key=True, autoincrement=True)
    upload_id = Column(Integer, ForeignKey("file_uploads.id", ondelete="CASCADE"), unique=True, nullable=False)
    total_rows = Column(Integer, nullable=False)
    total_columns = Column(Integer, nullable=False)
    numeric_columns = Column(Integer, default=0)
    categorical_columns = Column(Integer, default=0)
    datetime_columns = Column(Integer, default=0)
    text_columns = Column(Integer, default=0)
    missing_value_percentage = Column(DECIMAL(5, 2), default=0.00)
    duplicate_row_percentage = Column(DECIMAL(5, 2), default=0.00)
    target_column = Column(String(100))
    problem_type = Column(Enum("classification", "regression", "clustering", "unknown"), default="unknown")
    is_imbalanced = Column(Boolean, default=False)
    class_count = Column(Integer)
    memory_usage_mb = Column(DECIMAL(10, 2))
    profiling_status = Column(Enum("pending", "completed", "failed"), default="pending")
    created_at = Column(TIMESTAMP, server_default=func.now())

    upload = relationship("FileUpload", back_populates="dataset_profile")
    column_stats = relationship("ColumnStatistic", back_populates="dataset_profile", cascade="all, delete")


# ─────────────────────────────────────────────
# TABLE 7: column_statistics
# ─────────────────────────────────────────────
class ColumnStatistic(Base):
    __tablename__ = "column_statistics"

    id = Column(Integer, primary_key=True, autoincrement=True)
    dataset_profile_id = Column(Integer, ForeignKey("dataset_profiles.id", ondelete="CASCADE"), nullable=False)
    column_name = Column(String(100), nullable=False)
    data_type = Column(String(50), nullable=False)
    inferred_type = Column(Enum("numeric", "categorical", "datetime", "text", "boolean"), nullable=False)
    missing_count = Column(Integer, default=0)
    missing_percentage = Column(DECIMAL(5, 2), default=0.00)
    unique_count = Column(Integer, default=0)
    unique_percentage = Column(DECIMAL(5, 2), default=0.00)
    mean_value = Column(DECIMAL(20, 6))
    std_value = Column(DECIMAL(20, 6))
    min_value = Column(DECIMAL(20, 6))
    max_value = Column(DECIMAL(20, 6))
    median_value = Column(DECIMAL(20, 6))
    skewness = Column(DECIMAL(10, 4))
    kurtosis = Column(DECIMAL(10, 4))
    most_frequent_value = Column(String(255))
    created_at = Column(TIMESTAMP, server_default=func.now())

    dataset_profile = relationship("DatasetProfile", back_populates="column_stats")


# ─────────────────────────────────────────────
# TABLE 8: recommendations
# ─────────────────────────────────────────────
class Recommendation(Base):
    __tablename__ = "recommendations"

    id = Column(Integer, primary_key=True, autoincrement=True)
    upload_id = Column(Integer, ForeignKey("file_uploads.id", ondelete="CASCADE"), nullable=False)
    user_id = Column(Integer, ForeignKey("users.id", ondelete="CASCADE"), nullable=False)
    algorithm_id = Column(Integer, ForeignKey("ml_algorithms.id", ondelete="CASCADE"), nullable=False)
    rank_position = Column(Integer, nullable=False)
    confidence_score = Column(DECIMAL(5, 2), nullable=False)
    suitability_score = Column(DECIMAL(5, 2), nullable=False)
    recommendation_status = Column(Enum("active", "archived"), default="active")
    created_at = Column(TIMESTAMP, server_default=func.now())

    upload = relationship("FileUpload", back_populates="recommendations")
    user = relationship("User", back_populates="recommendations")
    algorithm = relationship("MLAlgorithm", back_populates="recommendations")
    reasons = relationship("RecommendationReason", back_populates="recommendation", cascade="all, delete")
    feedbacks = relationship("UserFeedback", back_populates="recommendation")


# ─────────────────────────────────────────────
# TABLE 9: recommendation_reasons
# ─────────────────────────────────────────────
class RecommendationReason(Base):
    __tablename__ = "recommendation_reasons"

    id = Column(Integer, primary_key=True, autoincrement=True)
    recommendation_id = Column(Integer, ForeignKey("recommendations.id", ondelete="CASCADE"), nullable=False)
    reason_type = Column(Enum("positive", "negative", "neutral"), nullable=False)
    reason_text = Column(Text, nullable=False)
    weight = Column(DECIMAL(3, 2), default=1.00)
    created_at = Column(TIMESTAMP, server_default=func.now())

    recommendation = relationship("Recommendation", back_populates="reasons")


# ─────────────────────────────────────────────
# TABLE 10: analysis_reports
# ─────────────────────────────────────────────
class AnalysisReport(Base):
    __tablename__ = "analysis_reports"

    id = Column(Integer, primary_key=True, autoincrement=True)
    upload_id = Column(Integer, ForeignKey("file_uploads.id", ondelete="CASCADE"), nullable=False)
    user_id = Column(Integer, ForeignKey("users.id", ondelete="CASCADE"), nullable=False)
    report_title = Column(String(255), nullable=False)
    report_summary = Column(Text)
    data_quality_score = Column(DECIMAL(5, 2))
    recommended_preprocessing = Column(Text)
    feature_engineering_tips = Column(Text)
    report_html = Column(Text)
    report_json = Column(JSON)
    is_public = Column(Boolean, default=False)
    view_count = Column(Integer, default=0)
    created_at = Column(TIMESTAMP, server_default=func.now())
    updated_at = Column(TIMESTAMP, server_default=func.now(), onupdate=func.now())

    upload = relationship("FileUpload", back_populates="reports")
    user = relationship("User", back_populates="reports")


# ─────────────────────────────────────────────
# TABLE 11: user_feedback
# ─────────────────────────────────────────────
class UserFeedback(Base):
    __tablename__ = "user_feedback"

    id = Column(Integer, primary_key=True, autoincrement=True)
    user_id = Column(Integer, ForeignKey("users.id", ondelete="CASCADE"), nullable=False)
    recommendation_id = Column(Integer, ForeignKey("recommendations.id", ondelete="CASCADE"), nullable=False)
    rating = Column(Integer, CheckConstraint("rating BETWEEN 1 AND 5"))
    feedback_text = Column(Text)
    was_helpful = Column(Boolean)
    actual_algorithm_used = Column(String(100))
    created_at = Column(TIMESTAMP, server_default=func.now())

    user = relationship("User", back_populates="feedbacks")
    recommendation = relationship("Recommendation", back_populates="feedbacks")


# ─────────────────────────────────────────────
# TABLE 12: activity_logs
# ─────────────────────────────────────────────
class ActivityLog(Base):
    __tablename__ = "activity_logs"

    id = Column(Integer, primary_key=True, autoincrement=True)
    user_id = Column(Integer, ForeignKey("users.id", ondelete="SET NULL"), nullable=True)
    action = Column(String(100), nullable=False)
    entity_type = Column(String(50))
    entity_id = Column(Integer)
    description = Column(Text)
    ip_address = Column(String(45))
    status = Column(Enum("success", "failure", "warning"), default="success")
    created_at = Column(TIMESTAMP, server_default=func.now())

    user = relationship("User", back_populates="logs")
