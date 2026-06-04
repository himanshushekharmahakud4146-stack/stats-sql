# Data Exploration, CSV Handling, Variance and Standard Deviation

## Objective

Learn how to load CSV datasets using Pandas, explore data using DataFrames, perform row and column selection with loc and iloc, and calculate basic statistical measures.

---

## Topics Covered

* CSV File Handling
* Pandas DataFrames
* Data Exploration
* loc[]
* iloc[]
* Mean
* Variance
* Standard Deviation
* Descriptive Statistics

---

## Loading CSV Files

Imported dataset using Pandas:

```python
import pandas as pd

df = pd.read_csv("../datasets/student_performance.csv")
```

### Purpose

* Read CSV data into a DataFrame
* Enable analysis and manipulation using Pandas

---

## Data Exploration

Used the following commands:

```python
df.head()
df.tail()
df.shape()
df.columns
df.info()
df.describe()
```

### Learned

* View dataset structure
* Check rows and columns
* Identify data types
* Generate statistical summaries

---

## Row and Column Selection

### Using loc[]

Label-based indexing.

Examples:

```python
df.loc[0]
df.loc[0:5]
df.loc[:, ["Final_Score"]]
```

### Using iloc[]

Position-based indexing.

Examples:

```python
df.iloc[0]
df.iloc[0:5]
df.iloc[:, 2]
```

### Difference

| loc               | iloc                 |
| ----------------- | -------------------- |
| Uses labels       | Uses positions       |
| Inclusive slicing | Python-style slicing |

---

## Statistical Analysis

### Mean

```python
df["Final_Score"].mean()
```

### Variance

```python
df["Final_Score"].var()
```

Measures the spread of data around the mean.

### Standard Deviation

```python
df["Final_Score"].std()
```

Represents data variability using the original unit.

---

## Experiments Performed

* Loaded CSV dataset
* Inspected dataset structure
* Selected rows using loc[]
* Selected rows using iloc[]
* Accessed specific columns
* Calculated descriptive statistics
* Compared variance and standard deviation

---

## Key Takeaways

* Pandas simplifies CSV data handling.
* loc[] is label-based indexing.
* iloc[] is position-based indexing.
* Variance measures spread.
* Standard deviation provides an interpretable measure of variability.
* Data exploration is the first step in any machine learning workflow.

---

## Day 2 Outcome

Built a foundation in data loading, DataFrame manipulation, indexing techniques, and basic statistical analysis using Pandas.
