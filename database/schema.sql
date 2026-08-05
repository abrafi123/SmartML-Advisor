

CREATE DATABASE IF NOT EXISTS smartml_advisor CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE smartml_advisor;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    full_name VARCHAR(100),
    role ENUM('admin', 'user') DEFAULT 'user',
    is_active BOOLEAN DEFAULT TRUE,
    profile_picture VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);



CREATE TABLE user_sessions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    token VARCHAR(500) NOT NULL UNIQUE,
    ip_address VARCHAR(45),
    user_agent VARCHAR(255),
    is_active BOOLEAN DEFAULT TRUE,
    expires_at TIMESTAMP NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);


CREATE TABLE algorithm_categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE,
    description TEXT,
    use_case TEXT,
    icon VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE ml_algorithms (
    id INT AUTO_INCREMENT PRIMARY KEY,
    category_id INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    short_name VARCHAR(50),
    description TEXT,
    strengths TEXT,
    weaknesses TEXT,
    best_for TEXT,
    min_samples INT DEFAULT 50,
    handles_missing BOOLEAN DEFAULT FALSE,
    handles_categorical BOOLEAN DEFAULT FALSE,
    handles_imbalanced BOOLEAN DEFAULT FALSE,
    requires_scaling BOOLEAN DEFAULT TRUE,
    complexity ENUM('low', 'medium', 'high') DEFAULT 'medium',
    interpretability ENUM('low', 'medium', 'high') DEFAULT 'medium',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES algorithm_categories(id) ON DELETE CASCADE
);


CREATE TABLE file_uploads (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    original_filename VARCHAR(255) NOT NULL,
    stored_filename VARCHAR(255) NOT NULL UNIQUE,
    file_type ENUM('csv', 'excel', 'json', 'xml', 'text') NOT NULL,
    file_size_bytes BIGINT NOT NULL,
    file_path VARCHAR(500) NOT NULL,
    upload_status ENUM('pending', 'processing', 'completed', 'failed') DEFAULT 'pending',
    error_message TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

CREATE TABLE dataset_profiles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    upload_id INT NOT NULL UNIQUE,
    total_rows INT NOT NULL,
    total_columns INT NOT NULL,
    numeric_columns INT DEFAULT 0,
    categorical_columns INT DEFAULT 0,
    datetime_columns INT DEFAULT 0,
    text_columns INT DEFAULT 0,
    missing_value_percentage DECIMAL(5,2) DEFAULT 0.00,
    duplicate_row_percentage DECIMAL(5,2) DEFAULT 0.00,
    target_column VARCHAR(100),
    problem_type ENUM('classification', 'regression', 'clustering', 'unknown') DEFAULT 'unknown',
    is_imbalanced BOOLEAN DEFAULT FALSE,
    class_count INT,
    memory_usage_mb DECIMAL(10,2),
    profiling_status ENUM('pending', 'completed', 'failed') DEFAULT 'pending',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (upload_id) REFERENCES file_uploads(id) ON DELETE CASCADE
);


CREATE TABLE column_statistics (
    id INT AUTO_INCREMENT PRIMARY KEY,
    dataset_profile_id INT NOT NULL,
    column_name VARCHAR(100) NOT NULL,
    data_type VARCHAR(50) NOT NULL,
    inferred_type ENUM('numeric', 'categorical', 'datetime', 'text', 'boolean') NOT NULL,
    missing_count INT DEFAULT 0,
    missing_percentage DECIMAL(5,2) DEFAULT 0.00,
    unique_count INT DEFAULT 0,
    unique_percentage DECIMAL(5,2) DEFAULT 0.00,
    mean_value DECIMAL(20,6),
    std_value DECIMAL(20,6),
    min_value DECIMAL(20,6),
    max_value DECIMAL(20,6),
    median_value DECIMAL(20,6),
    skewness DECIMAL(10,4),
    kurtosis DECIMAL(10,4),
    most_frequent_value VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (dataset_profile_id) REFERENCES dataset_profiles(id) ON DELETE CASCADE
);


CREATE TABLE recommendations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    upload_id INT NOT NULL,
    user_id INT NOT NULL,
    algorithm_id INT NOT NULL,
    rank_position INT NOT NULL,
    confidence_score DECIMAL(5,2) NOT NULL,
    suitability_score DECIMAL(5,2) NOT NULL,
    recommendation_status ENUM('active', 'archived') DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (upload_id) REFERENCES file_uploads(id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (algorithm_id) REFERENCES ml_algorithms(id) ON DELETE CASCADE
);


CREATE TABLE recommendation_reasons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    recommendation_id INT NOT NULL,
    reason_type ENUM('positive', 'negative', 'neutral') NOT NULL,
    reason_text TEXT NOT NULL,
    weight DECIMAL(3,2) DEFAULT 1.00,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (recommendation_id) REFERENCES recommendations(id) ON DELETE CASCADE
);

CREATE TABLE analysis_reports (
    id INT AUTO_INCREMENT PRIMARY KEY,
    upload_id INT NOT NULL,
    user_id INT NOT NULL,
    report_title VARCHAR(255) NOT NULL,
    report_summary TEXT,
    data_quality_score DECIMAL(5,2),
    recommended_preprocessing TEXT,
    feature_engineering_tips TEXT,
    report_html TEXT,
    report_json JSON,
    is_public BOOLEAN DEFAULT FALSE,
    view_count INT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (upload_id) REFERENCES file_uploads(id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);


CREATE TABLE user_feedback (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    recommendation_id INT NOT NULL,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    feedback_text TEXT,
    was_helpful BOOLEAN,
    actual_algorithm_used VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (recommendation_id) REFERENCES recommendations(id) ON DELETE CASCADE
);


CREATE TABLE activity_logs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    action VARCHAR(100) NOT NULL,
    entity_type VARCHAR(50),
    entity_id INT,
    description TEXT,
    ip_address VARCHAR(45),
    status ENUM('success', 'failure', 'warning') DEFAULT 'success',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE SET NULL
);


-- INDEXES

CREATE INDEX idx_file_uploads_user ON file_uploads(user_id);
CREATE INDEX idx_dataset_profiles_upload ON dataset_profiles(upload_id);
CREATE INDEX idx_column_stats_profile ON column_statistics(dataset_profile_id);
CREATE INDEX idx_recommendations_upload ON recommendations(upload_id);
CREATE INDEX idx_recommendations_user ON recommendations(user_id);
CREATE INDEX idx_activity_logs_user ON activity_logs(user_id);
CREATE INDEX idx_activity_logs_created ON activity_logs(created_at);


-- SEED DATA: algorithm_categories

INSERT INTO algorithm_categories (name, description, use_case, icon) VALUES
('Classification', 'Predict which category/class a data point belongs to', 'Spam detection, disease diagnosis, image recognition', 'tag'),
('Regression', 'Predict a continuous numerical value', 'House price prediction, stock forecasting, temperature', 'trending_up'),
('Clustering', 'Group similar data points without labels', 'Customer segmentation, anomaly detection, document grouping', 'bubble_chart'),
('Dimensionality Reduction', 'Reduce number of features while preserving information', 'Visualization, noise reduction, feature extraction', 'compress'),
('Association', 'Find relationships and patterns between variables', 'Market basket analysis, recommendation systems', 'share');


-- SEED DATA: ml_algorithms

INSERT INTO ml_algorithms (category_id, name, short_name, description, strengths, weaknesses, best_for, min_samples, handles_missing, handles_categorical, handles_imbalanced, requires_scaling, complexity, interpretability) VALUES
(1, 'Logistic Regression', 'LR', 'Linear model for binary/multiclass classification', 'Fast, interpretable, works well with linearly separable data', 'Poor with non-linear data, sensitive to outliers', 'Binary classification with linear boundary', 100, FALSE, FALSE, FALSE, TRUE, 'low', 'high'),
(1, 'Random Forest', 'RF', 'Ensemble of decision trees using bagging', 'Handles non-linearity, robust to overfitting, feature importance', 'Slow for large datasets, black box', 'General purpose classification', 200, TRUE, TRUE, TRUE, FALSE, 'medium', 'medium'),
(1, 'Support Vector Machine', 'SVM', 'Finds optimal hyperplane to separate classes', 'Effective in high dimensions, memory efficient', 'Slow on large data, hard to tune', 'Text classification, small-medium datasets', 100, FALSE, FALSE, FALSE, TRUE, 'medium', 'low'),
(1, 'K-Nearest Neighbors', 'KNN', 'Classifies based on majority of K nearest neighbors', 'Simple, no training needed, naturally handles multi-class', 'Slow prediction, memory intensive', 'Small datasets with clear clusters', 50, FALSE, FALSE, FALSE, TRUE, 'low', 'high'),
(1, 'Decision Tree', 'DT', 'Tree-like model of decisions based on feature values', 'Highly interpretable, handles mixed data types', 'Prone to overfitting, unstable', 'When interpretability is critical', 50, TRUE, TRUE, FALSE, FALSE, 'low', 'high'),
(1, 'Gradient Boosting', 'GBM', 'Sequential ensemble that corrects previous errors', 'High accuracy, handles mixed types', 'Slow training, many hyperparameters', 'Tabular data competitions, high accuracy needs', 500, TRUE, FALSE, FALSE, FALSE, 'high', 'low'),
(1, 'XGBoost', 'XGB', 'Optimized gradient boosting with regularization', 'Very high accuracy, fast, handles missing values', 'Complex tuning required', 'Structured/tabular data, Kaggle-style problems', 500, TRUE, FALSE, TRUE, FALSE, 'high', 'low'),
(2, 'Linear Regression', 'LinReg', 'Models linear relationship between features and target', 'Simple, fast, highly interpretable', 'Assumes linearity, sensitive to outliers', 'When linear relationship exists', 50, FALSE, FALSE, FALSE, TRUE, 'low', 'high'),
(2, 'Ridge Regression', 'Ridge', 'Linear regression with L2 regularization', 'Handles multicollinearity, prevents overfitting', 'Still assumes linearity', 'High-dimensional data with correlated features', 50, FALSE, FALSE, FALSE, TRUE, 'low', 'high'),
(2, 'Random Forest Regressor', 'RFR', 'Ensemble of trees for regression tasks', 'Non-linear, robust, feature importance', 'Cannot extrapolate beyond training range', 'Non-linear regression problems', 200, TRUE, TRUE, FALSE, FALSE, 'medium', 'medium'),
(3, 'K-Means', 'KM', 'Partitions data into K clusters based on centroids', 'Fast, scalable, easy to interpret', 'Need to specify K, assumes spherical clusters', 'Well-separated clusters, large datasets', 100, FALSE, FALSE, FALSE, TRUE, 'low', 'high'),
(3, 'DBSCAN', 'DBSCAN', 'Density-based clustering that finds arbitrary shapes', 'No need to specify clusters, finds outliers', 'Struggles with varying density', 'Arbitrary shaped clusters, anomaly detection', 100, FALSE, FALSE, FALSE, TRUE, 'medium', 'medium'),
(3, 'Hierarchical Clustering', 'HC', 'Builds hierarchy of clusters (dendrogram)', 'No need to specify K, visualizable', 'Slow on large datasets', 'When cluster hierarchy matters', 50, FALSE, FALSE, FALSE, TRUE, 'medium', 'high'),
(4, 'PCA', 'PCA', 'Linear dimensionality reduction using variance', 'Fast, removes correlated features', 'Loses interpretability of original features', 'Preprocessing before other algorithms', 100, FALSE, FALSE, FALSE, TRUE, 'medium', 'low'),
(5, 'Apriori', 'APR', 'Finds frequent itemsets and association rules', 'Easy to understand, generates rules', 'Slow on large itemsets', 'Market basket, recommendation systems', 1000, FALSE, TRUE, FALSE, FALSE, 'medium', 'high');


-- DEFAULT ADMIN USER (password: Admin@1234)

INSERT INTO users (username, email, password_hash, full_name, role) VALUES
('admin', 'admin@smartml.com', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMaJobMiqMiJ05YjJwPW5B7o8m', 'System Admin', 'admin');
