# 🎓 Student Engagement Analysis Project

![Python](https://img.shields.io/badge/Python-3.8%2B-blue)
![SQL](https://img.shields.io/badge/SQL-PostgreSQL-informational)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)

## 📌 Project Overview

This project analyzes student engagement data from an online learning platform, focusing on the impact of new platform features introduced in the first half of 2022. The analysis covers certificate issuance, student registrations, purchase history, and course watch times from January 1, 2020, to June 30, 2022. 

The primary objective is to assess the effect of career tracks, practice exams, and an expanded course library on student engagement using SQL and Python.

---

## 📚 Table of Contents

- [Project Overview](#project-overview)
- [Technologies Used](#technologies-used)
- [Data Sources](#data-sources)
- [Project Structure](#project-structure)
- [Setup and Installation](#setup-and-installation)
- [SQL Analysis](#sql-analysis)
- [Python Analysis](#python-analysis)
- [Data Interpretation](#data-interpretation)
- [Contributing](#contributing)
- [License](#license)

---

## ⚙️ Technologies Used

- SQL: Data querying, transformation, and aggregation.
- Python:
  - Pandas – Data manipulation and analysis.
  - Seaborn – Visualization.
  - SciPy – Statistical testing.
  - Scikit-learn – Regression modeling.

---

## 🧾 Data Sources

- certificates_issued.csv – Certificate issuance records.
- student_registrations.csv – Student registration data.
- purchase_history.csv – Subscription and payment data.
- course_watch_times.csv – Watch time by course.
- Q2 2021 vs Q2 2022 breakdown:
  - q2_2021_free_plan.csv
  - q2_2021_paid_subscribers.csv
  - q2_2022_free_plan.csv
  - q2_2022_paid_subscribers.csv
- certificates_issued_minutes_watched.csv – Combined data for correlation analysis.

---

## 📁 Project Structure

```bash
User_Engagement_Analysis/
│
├── data/                            # All data files (CSV and database)
│   ├── certificates_issued_minutes_watched.csv
│   ├── q2_2021_free_plan.csv
│   ├── q2_2021_paid_subscribers.csv
│   ├── q2_2022_free_plan.csv
│   ├── q2_2022_paid_subscribers.csv
│   ├── minutes_watched_2021_paid_0_no_outliers.csv
│   ├── minutes_watched_2021_paid_1_no_outliers.csv
│   ├── minutes_watched_2022_paid_0_no_outliers.csv
│   ├── minutes_watched_2022_paid_1_no_outliers.csv
│   ├── data_scientist_project.db     # Database file
│
├── sql/                             # SQL scripts for data transformation
│   ├── certificates_issued_minutes_watched.sql
│   ├── q2_2021_free_plan.sql
│   ├── q2_2021_paid_subscribers.sql
│   ├── q2_2022_free_plan.sql
│   ├── q2_2022_paid_subscribers.sql
│   ├── view.sql                      # SQL view for data aggregation
│
├── notebooks/                        # Jupyter notebooks for analysis
│   ├── EDA-ML.ipynb                   # Exploratory Data Analysis & ML
│
└── README.md                         # Project documentation
