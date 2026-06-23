# Imbalanced Dataset

An imbalanced dataset occurs when one class contains significantly more samples than another.

Example:

Normal Transactions = 99%

Fraud Transactions = 1%

This causes machine learning models to favor the majority class.

As a result, high accuracy may not indicate good performance.

# Oversampling

Oversampling increases the number of minority class samples.

Purpose:

- Balance class distribution
- Improve minority class learning

Advantage:

- Retains all original data

Disadvantage:

- Can lead to overfitting

# Undersampling

Undersampling reduces the number of majority class samples.

Purpose:

- Create a balanced dataset

Advantage:

- Faster training

Disadvantage:

- Important information may be lost

# SMOTE

SMOTE stands for Synthetic Minority Oversampling Technique.

Instead of duplicating minority samples, SMOTE creates synthetic examples.

Benefits:

- Reduces overfitting
- Improves minority class representation
- Widely used in fraud detection and healthcare datasets

# Ensemble Methods

Ensemble methods combine multiple models to improve performance.

Examples:

- Random Forest
- XGBoost
- AdaBoost

Benefits:

- Better generalization
- Improved minority class detection
- Reduced model variance


# Cost-Sensitive Learning

Different prediction mistakes have different costs.

Example:

Fraud Detection

False Negative:
A fraud transaction is classified as normal.

Cost:
Very High

Cost-sensitive learning assigns higher penalties to important errors.

Example:

class_weight='balanced'


# Key Insights

1. Accuracy alone can be misleading on imbalanced datasets.

2. F1 Score provides a better evaluation because it considers both Precision and Recall.

3. Oversampling increases minority class examples.

4. Undersampling reduces majority class examples.

5. SMOTE generates synthetic minority samples.

6. Ensemble methods improve predictive performance.

7. Cost-sensitive learning assigns greater importance to costly mistakes.

8. Handling imbalance is critical in fraud detection, healthcare, and cybersecurity applications.


