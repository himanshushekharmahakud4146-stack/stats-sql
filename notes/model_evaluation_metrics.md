# Model Evaluation Metrics

## Why Do We Need Metrics?

After training a machine learning model, we need a way to measure how good the model is.

Metrics help us evaluate model performance.

---

## Confusion Matrix

A confusion matrix compares actual answers with model predictions.

### True Positive (TP)

Actual = Positive

Predicted = Positive

Correct prediction.

### True Negative (TN)

Actual = Negative

Predicted = Negative

Correct prediction.

### False Positive (FP)

Actual = Negative

Predicted = Positive

Wrong prediction.

### False Negative (FN)

Actual = Positive

Predicted = Negative

Wrong prediction.

---

## Accuracy

Measures overall correctness.

Accuracy tells us:

"Out of all predictions, how many were correct?"

Higher accuracy is generally better.

---

## Precision

Precision tells us:

"When the model predicts positive, how often is it correct?"

High precision means fewer false positives.

---

## Recall

Recall tells us:

"Out of all actual positive cases, how many did the model find?"

High recall means fewer false negatives.

---

## F1 Score

F1 Score combines Precision and Recall into one metric.

F1 is useful when both Precision and Recall are important.

A higher F1 Score indicates better balance.

---

## ROC Curve

ROC stands for Receiver Operating Characteristic.

The ROC curve shows how the model performs across different classification thresholds.

---

## AUC Score

AUC stands for Area Under the Curve.

AUC summarizes ROC performance into one number.

### Interpretation

0.50 → Random Guess

0.60 → Weak Model

0.70 → Good Model

0.80 → Very Good Model

0.90+ → Excellent Model

---

## Key Takeaway

Accuracy alone is not enough.

Precision, Recall, F1 Score, ROC Curve, and AUC provide a deeper understanding of machine learning model performance.
