# Confusion Matrix Deep Dive

## Why Do We Need Evaluation Metrics?

Imagine a Titanic model predicts whether a passenger survives or not.

If the model gives predictions, how do we know whether it is good or bad?

Evaluation metrics help us measure model performance.

Without metrics, we are only guessing.

---

# Confusion Matrix

A Confusion Matrix is a table used to compare:

* Actual Values
* Predicted Values

For Binary Classification:

|                 | Predicted Positive | Predicted Negative |
| --------------- | ------------------ | ------------------ |
| Actual Positive | TP                 | FN                 |
| Actual Negative | FP                 | TN                 |

---

# True Positive (TP)

Actual = Positive

Predicted = Positive

Correct Prediction.

Example:

Passenger survived.

Model predicted survived.

Result:

TP = 1

---

# True Negative (TN)

Actual = Negative

Predicted = Negative

Correct Prediction.

Example:

Passenger died.

Model predicted died.

Result:

TN = 1

---

# False Positive (FP)

Actual = Negative

Predicted = Positive

Wrong Prediction.

Example:

Passenger died.

Model predicted survived.

Result:

FP = 1

Also called:

Type I Error

---

# False Negative (FN)

Actual = Positive

Predicted = Negative

Wrong Prediction.

Example:

Passenger survived.

Model predicted died.

Result:

FN = 1

Also called:

Type II Error

---

# Example Confusion Matrix

|                 | Predicted Survived | Predicted Died |
| --------------- | ------------------ | -------------- |
| Actual Survived | 80                 | 20             |
| Actual Died     | 10                 | 90             |

Therefore:

TP = 80

FN = 20

FP = 10

TN = 90

---

# Accuracy

Question:

Out of all predictions, how many were correct?

Formula:

Example:

TP = 80

TN = 90

FP = 10

FN = 20

Accuracy = (80 + 90) / (80 + 90 + 10 + 20)

Accuracy = 170 / 200

Accuracy = 85%

Interpretation:

The model was correct 85% of the time.

---

# Precision

Question:

When the model predicts Positive, how often is it correct?

Formula:

Example:

TP = 80

FP = 10

Precision = 80 / (80 + 10)

Precision = 88.9%

Interpretation:

When the model says "Survived", it is correct about 89% of the time.

---

# Recall

Question:

Out of all actual Positive cases, how many did the model find?

Formula:

Example:

TP = 80

FN = 20

Recall = 80 / (80 + 20)

Recall = 80%

Interpretation:

The model found 80% of all survivors.

---

# F1 Score

Problem:

Accuracy alone can be misleading.

Precision alone is incomplete.

Recall alone is incomplete.

F1 combines Precision and Recall.

Formula:

Interpretation:

Higher F1 means better balance between Precision and Recall.

Range:

0 to 1

Closer to 1 is better.

---

# When Should We Prefer Precision?

Use Precision when False Positives are costly.

Examples:

1. Spam Email Detection
2. Fraud Detection
3. Loan Approval

Reason:

Wrong positive predictions create business problems.

---

# When Should We Prefer Recall?

Use Recall when False Negatives are dangerous.

Examples:

1. Cancer Detection
2. Disease Screening
3. Security Threat Detection

Reason:

Missing a true positive case can be very costly.

---

# Precision vs Recall

Precision Focus:

"Be sure before saying YES."

Recall Focus:

"Don't miss any YES cases."

---

# Key Interview Questions

Q1. What is a Confusion Matrix?

A table used to compare actual values with predicted values.

Q2. What is TP?

Actual Positive and Predicted Positive.

Q3. What is FP?

Actual Negative but Predicted Positive.

Q4. What is Precision?

How often positive predictions are correct.

Q5. What is Recall?

How many actual positive cases are found.

Q6. When should Recall be preferred?

Medical diagnosis and safety-critical systems.

Q7. When should Precision be preferred?

Fraud detection and spam filtering.

---

# Final Takeaway

Confusion Matrix is the foundation of classification evaluation.

From the Confusion Matrix we calculate:

* Accuracy
* Precision
* Recall
* F1 Score

These metrics help us understand whether a machine learning model is useful in real-world applications.
