# ML Metrics for Business

## Accuracy

Measures the percentage of correct predictions.

Formula:

Accuracy = (TP + TN) / (TP + TN + FP + FN)

---

## Precision

Measures how many predicted positive cases are actually positive.

Formula:

Precision = TP / (TP + FP)

---

## Recall

Measures how many actual positive cases are correctly identified.

Formula:

Recall = TP / (TP + FN)

---

## F1 Score

Balances Precision and Recall.

Formula:

F1 = 2 × (Precision × Recall) / (Precision + Recall)

---

## ROC-AUC

Measures a model's ability to distinguish between classes.

Higher AUC indicates better model performance.

---

## BFSI Examples

### Fraud Detection

Focus Metric:

Recall

Reason:

Missing fraud transactions can cause financial loss.

### Loan Default Prediction

Focus Metric:

Precision

Reason:

Incorrect approvals increase credit risk.

---

## Key Takeaway

The best metric depends on the business objective. Accuracy alone should not be used to evaluate machine learning models.
