# Statistics & SQL for AI

Month 4 of my AI/ML Engineering Roadmap.

## Overview

This repository contains my Month 4 learning journey focused on Statistics, Probability, and SQL for AI, Data Science, and Machine Learning interviews.

The goal of this month is to build strong statistical intuition, understand machine learning metrics, and develop practical SQL skills used in real-world data analysis.

---

## Objectives

* Build strong statistics foundations
* Understand probability and distributions
* Learn machine learning evaluation metrics
* Develop SQL problem-solving skills
* Practice business-oriented data analysis
* Prepare for AI/ML and Data Science interviews

---

## Repository Structure

```text
datasets/
notebooks/
notes/
sql-practice/
```

---

## Month 4 Learning Plan

### Week 1: Statistics Foundations

Topics:

* Mean
* Median
* Mode
* Variance
* Standard Deviation
* Probability
* Conditional Probability
* Bayes Theorem

Deliverables:

* Statistics notebook
* Probability notebook
* Bayes notebook
* Concept notes

---

### Week 2: Machine Learning Metrics

Topics:

* Accuracy
* Precision
* Recall
* F1 Score
* Confusion Matrix
* ROC-AUC

Deliverables:

* Metrics notebook
* Evaluation examples
* Interview notes

---

### Week 3: SQL Fundamentals

Topics:

* SELECT
* WHERE
* ORDER BY
* GROUP BY
* HAVING
* Aggregate Functions

Deliverables:

* SQL query collection
* Practice exercises

---

### Week 4: Advanced SQL

Topics:

* JOINS
* Subqueries
* Common Table Expressions (CTEs)
* Window Functions
* Business Analysis Queries

Deliverables:

* SQL analysis project
* Business case study

---

## Tools Used

* Python
* Jupyter Notebook
* NumPy
* Pandas
* Matplotlib
* SQL
* Git
* GitHub

---

## Career Goal

Build a strong foundation in Statistics and SQL to become an AI/ML Engineer and prepare for Data Science, Machine Learning, and Generative AI roles.

---

## Author

Himanshu Shekhar Mahakud

B.Tech CSE | AI/ML Engineering Roadmap


## Progress

## Day 1: Descriptive Statistics Foundations

### Topics:
- Mean
- Median
- Mode
- Data Types
- Iris Dataset Exploration

### Practical Work:
- Loaded Iris dataset using scikit-learn
- Calculated mean, median, and mode
- Used describe() for summary statistics
- Created histogram visualizations
- Completed statistics exercises in Jupyter Notebook

### Resources:
- Statistics with Python (University of Michigan)
- StatQuest Statistics Fundamentals# Statistics & SQL for AI

## Day 2: Data Exploration, Variance and Standard Deviation

### Concepts Learned

* CSV Data Handling with Pandas
* DataFrames
* Data Exploration
* loc[] and iloc[]
* Mean
* Variance
* Standard Deviation

### Practical Work

* Loaded CSV dataset into a Pandas DataFrame
* Explored dataset structure and summary statistics
* Performed row and column selection using loc[] and iloc[]
* Calculated variance and standard deviation
* Conducted basic dataset experiments and analysis

### Files Added

* datasets/student_performance.csv
* notebooks/variance_standard_deviation_distribution.ipynb
* notes/variance_standard_deviation_distribution.md

### Outcome

Strengthened foundational data analysis skills using Pandas and developed intuition for data variability through variance and standard deviation.

## Day 3 - Probability & Bayes Theorem

**Status:** ✅ Completed

**Topics Covered:**

* Probability Basics
* Conditional Probability
* Bayes Theorem
* Bayes Intuition
* Real-world Probability Examples

**Activities Completed:**

* Studied probability concepts using Khan Academy
* Learned Bayes intuition from 3Blue1Brown
* Implemented conditional probability calculations in Python
* Built a simple Bayes spam classification example
* Created a Jupyter notebook (`bayes.ipynb`)
* Documented key concepts and learnings

**Key Learnings:**

* Probability measures the likelihood of events.
* Conditional probability incorporates known information.
* P(A|B) represents the probability of A given B.
* Bayes Theorem updates beliefs using new evidence.
* Bayes concepts are widely used in AI, Machine Learning, and spam filtering.

**Files Added:**

* `notebooks/bayes.ipynb`
* `notes/probability_bayes_notes.md`

## Day 4: Sampling & Central Limit Theorem (CLT)

### Topics Covered

* Sampling and Sampling Distributions
* Central Limit Theorem (CLT)
* Random Sampling using NumPy
* Statistical Simulation in Python
* Histogram Visualization using Matplotlib

### Practical Work

* Created a CLT simulation notebook using NumPy and Matplotlib
* Generated sampling distributions for sample sizes:

  * n = 10
  * n = 30
  * n = 100
* Observed how larger sample sizes produce distributions that become increasingly normal (bell-shaped)

### Files Added

* `notebooks/sampling_clt_simulation.ipynb`
* `notes/sampling_clt_notes.md`

### Key Learning

The Central Limit Theorem states that as sample size increases, the distribution of sample means approaches a normal distribution, regardless of the original population distribution.

### Outcome

Successfully simulated the Central Limit Theorem and visualized sampling distributions using Python.

## Day 5: Correlation and Covariance Analysis

### Topics Covered

* Covariance
* Correlation Coefficient
* Positive Correlation
* Negative Correlation
* Correlation Matrix
* Data Relationship Analysis

### Practical Implementation

* Loaded and explored the Titanic dataset using Pandas
* Computed correlation matrix for numerical features
* Visualized feature relationships using a Seaborn heatmap
* Identified patterns and relationships between variables
* Documented business insights from correlation analysis

### Files Added

#### Notebook

* `notebooks/correlation_analysis.ipynb`

#### Notes

* `notes/correlation_covariance_notes.md`

### Key Learnings

* Covariance measures how variables move together
* Correlation measures both the strength and direction of a relationship
* Correlation values range from -1 to +1
* Heatmaps provide a quick visual summary of feature relationships
* Correlation analysis is useful for feature selection and exploratory data analysis

### Business Insights

1. Passenger class shows a relationship with ticket fare.
2. Fare exhibits a meaningful relationship with survival outcomes.
3. Certain numerical features display stronger associations than others.
4. Correlation helps identify potentially useful predictive features.
5. Data visualization improves interpretation of statistical relationships.

### Outcome

Successfully performed correlation analysis, generated a correlation heatmap, and interpreted relationships between variables using Python, Pandas, and Seaborn.

## Day 6: Statistics Notebook Review and Portfolio Polish

### Topics Covered

* Notebook Review
* Code Refactoring
* Markdown Documentation
* Repository Cleanup
* GitHub Portfolio Preparation

### Practical Implementation

* Reviewed all Week 1 statistics notebooks
* Improved notebook structure and readability
* Added markdown explanations to important sections
* Added summary cells to notebooks
* Organized repository documentation for GitHub presentation

### Files Updated

#### Notebooks

* `notebooks/sampling_clt_simulation.ipynb`
* `notebooks/correlation_analysis.ipynb`

#### Notes

* `notes/sampling_clt_notes.md`
* `notes/correlation_covariance_notes.md`

#### Documentation

* `README.md`

### Repository Improvements

* Added notebook objectives
* Added notebook summary sections
* Improved markdown formatting
* Refactored notebook organization
* Updated repository documentation

### Key Learnings

* Clean notebooks are easier to understand and maintain.
* Documentation is an important part of every data project.
* Markdown improves notebook readability.
* GitHub repositories should clearly communicate project goals and outcomes.
* Portfolio quality depends on both technical work and presentation.

### Milestone Achieved

✅ Week 1 Statistics Gate Completed

### Deliverables

* Polished statistics notebooks
* Improved repository documentation
* Shareable GitHub statistics project
* Portfolio-ready notebook collection

### Outcome

Successfully reviewed, cleaned, documented, and organized all Week 1 statistics work. The repository is now structured as a professional learning portfolio and ready for future Machine Learning and AI projects.

## Day 7: Week 1 Review and GitHub Audit

### Activities Completed

* Reviewed all Week 1 notebooks
* Checked repository organization
* Improved notebook documentation
* Fixed formatting issues
* Evaluated project from a recruiter perspective
* Planned Week 2 objectives

### Files Added

#### Review Notes

* `notes/week1_review.md`

### Key Learnings

* Consistent review improves retention.
* Documentation is as important as coding.
* Well-organized repositories are easier to understand.
* Professional presentation strengthens project portfolios.

### Week 1 Status

✅ Sampling and Central Limit Theorem

✅ Correlation and Covariance

✅ Statistical Documentation

✅ GitHub Portfolio Review

### Outcome

Successfully completed Week 1 review and repository audit. The project is organized, documented, and ready for Week 2 development.

## Day 8: Machine Learning Metrics

### Topics Covered

* Confusion Matrix
* True Positive (TP)
* False Positive (FP)
* True Negative (TN)
* False Negative (FN)
* Accuracy
* Precision
* Recall

### Practical Implementation

* Trained Logistic Regression model on the Titanic dataset
* Generated predictions on test data
* Computed confusion matrix
* Calculated Accuracy, Precision, and Recall manually
* Built a metrics comparison table

### Files Added

#### Notebook

* `notebooks/ml_metrics_logistic_regression.ipynb`

#### Notes

* `notes/ml_metrics_notes.md`

### Outcome

Built and evaluated a classification model and learned how machine learning metrics are calculated and interpreted.

## Day 9: F1 Score, ROC Curve and AUC

### Topics Covered

* F1 Score
* ROC Curve
* AUC Score
* Model Evaluation

### Practical Implementation

* Reused Titanic Logistic Regression model
* Calculated F1 Score
* Calculated ROC-AUC Score
* Generated ROC Curve using sklearn.metrics
* Visualized model performance with Matplotlib

### Files Added

#### Notebook

* `notebooks/model_evaluation_roc_auc.ipynb`

#### Notes

* `notes/model_evaluation_metrics.md`

### Key Learnings

* F1 Score balances Precision and Recall.
* ROC Curve visualizes classifier performance.
* AUC provides a single measure of model quality.
* Model evaluation requires more than Accuracy alone.

### Outcome

Successfully evaluated a classification model using F1 Score, ROC Curve, and AUC Score and visualized performance through ROC analysis.

## Day 10: Confusion Matrix Analysis & Model Comparison

### Topics Covered

* Confusion Matrix
* True Positive (TP)
* True Negative (TN)
* False Positive (FP)
* False Negative (FN)
* Accuracy
* Precision
* Recall
* Classification Model Evaluation

### Practical Implementation

* Developed a reusable `plot_confusion_matrix()` visualization function
* Trained and evaluated a Logistic Regression model
* Trained and evaluated a Decision Tree Classifier
* Trained and evaluated a K-Nearest Neighbors (KNN) Classifier
* Generated confusion matrix visualizations for all models
* Performed comparative analysis of classification performance

### Files Added

#### Notebook

* `notebooks/confusion_matrix_comparison.ipynb`

#### Notes

* `notes/confusion_matrix_deep_dive.md`

### Key Learnings

* Confusion matrices provide detailed insight into model predictions and errors.
* TP, TN, FP, and FN form the foundation of classification evaluation metrics.
* Precision is important when false positives are costly.
* Recall is important when false negatives are costly.
* Different machine learning models produce different prediction patterns on the same dataset.
* Model evaluation helps identify strengths and weaknesses beyond overall accuracy.

### Skills Practiced

* Data Preprocessing
* Classification Modeling
* Logistic Regression
* Decision Tree Classification
* K-Nearest Neighbors (KNN)
* Confusion Matrix Analysis
* Model Comparison
* Data Visualization with Seaborn and Matplotlib

### Outcome

Successfully built a reusable confusion matrix visualization workflow and compared multiple classification models on the Titanic dataset to understand prediction quality, error distribution, and evaluation metrics.
