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
