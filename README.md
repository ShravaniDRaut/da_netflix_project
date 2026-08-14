🎬 Netflix Data Analysis Project

📌 Project Overview

This is an end-to-end Netflix Data Analysis project combining Python, MySQL/SQL, and Power BI.

The project starts with the Netflix titles dataset, performs data exploration and cleaning in Python, runs business-oriented SQL analysis in MySQL, applies a Random Forest classification model to predict whether content is a Movie or TV Show, and presents the main findings through an interactive Power BI dashboard.

The dataset contains 8,807 Netflix titles and 12 columns.

🛠️ Tools & Technologies

Python

Pandas

NumPy

Matplotlib

Seaborn

SQLAlchemy

MySQL Connector

Scikit-learn

MySQL – Database and SQL analysis

Power BI – Interactive dashboard and visualization

Git & GitHub – Version control and portfolio

📂 Project Structure

Netflix-Data-Analysis/
│
├── README.md
│
├── python/
│   ├── connect.py
│   └── netflixeda.py
│
├── sql/
│   └── netflix_sql.sql
│
├── data/
│   └── netflix_titles.csv
│
└── powerbi/
    └── Netflix_Analysis_Dashboard.pbix


📊 Dataset

The project uses the Netflix titles dataset containing 8,807 records and 12 columns.

Main columns:

Column             Description

show_id            Unique Netflix content ID

type               Movie or TV Show

title              Title of the content

director           Director

cast               Cast information

country            Country/countries associated with the content

date_added         Date added to Netflix

release_year       Original release year

rating             Content rating

duration           Movie duration or TV Show seasons

listed_in          Genre/category

description        Content description


🐍 Python Analysis

The Python part of the project is used for data exploration, cleaning, visualization, SQL connectivity, and machine learning.

The Python files use libraries including Pandas, Matplotlib, Seaborn, MySQL Connector, SQLAlchemy and Scikit-learn.

Python data exploration

-The analysis checks:

Dataset shape

Column names

Data types

Descriptive statistics

Missing values

Duplicate records

Genre/category distribution

Sample records



-Python visualizations

The project creates visualizations for:

Movies vs TV Shows

Top 10 content-producing countries

Top Netflix genres

Content added by year

Ratings distribution

Movie duration distribution

-Machine Learning

A Random Forest Classifier is included to predict the content type:

Movie vs TV Show

-Features used include:

release_year

rating

country

listed_in

duration_num

-The dataset is split into training and testing sets using an 80/20 split, and model performance is evaluated using:

Accuracy

Classification report

The Python source implements the Random Forest model with n_estimators=100 in the main model configuration.

🗄️ MySQL / SQL Analysis

The SQL file creates the netflix_analysis database and a Netflix content table before performing business analysis.

-The SQL analysis covers questions such as:

Total Movies vs TV Shows

Top 10 countries with the most content

Most common Netflix ratings

Content released each year

Movies/content added each year

Top 10 directors with the most content

Movies and TV Shows by rating

Longest movie

Netflix content available in India

Movies released after 2020

Most common genres

Total content by country and type

TV Shows with more than 5 seasons

Top 5 release years with the highest content

-SQL concepts demonstrated

CREATE DATABASE

CREATE TABLE

SELECT

WHERE

GROUP BY

ORDER BY

COUNT()

LIMIT

LIKE

CASE

Date functions

String functions

Aggregation

Filtering

📈 Power BI Dashboard

The Power BI file contains the dashboard created from the Netflix dataset.

The dashboard focuses on:

Overall Netflix content

Movies vs TV Shows

Content trends

Release-year analysis

Countries

Ratings

Genres

Content added over time

Key Netflix insights

Interactive filters can be used to explore the dataset by dimensions such as content type, year, rating, country and genre, depending on the dashboard page.

🔄 Project Workflow

Netflix Dataset
      ↓
Python Data Exploration
      ↓
Data Cleaning & Preparation
      ↓
MySQL Database
      ↓
SQL Business Analysis
      ↓
Python SQL Connectivity
      ↓
Machine Learning Analysis
      ↓
Power BI Visualization
      ↓
Business Insights

🎯 Business Questions

This project answers questions such as:

What is the distribution of Movies and TV Shows?

Which countries have the most Netflix content?

What are the most common ratings?

How has Netflix content changed over the years?

Which directors have the most content?

What are the most common genres?

How much Netflix content is associated with India?

Which movies were released after 2020?

Which TV Shows have more than five seasons?

Can content type be predicted using selected Netflix attributes?

💡 Key Skills Demonstrated

-Data Analysis

Data cleaning

Missing-value handling

Duplicate detection

Exploratory Data Analysis

Aggregation and trend analysis

-Python

Pandas

Matplotlib

Seaborn

SQLAlchemy

MySQL Connector

Scikit-learn

-SQL

Filtering

Aggregation

Grouping

Sorting

Date functions

String functions

Business queries

-Machine Learning

Label Encoding

Train/test split

Random Forest Classification

Model prediction

Accuracy evaluation

Classification report

-Business Intelligence

Power BI
KPI reporting
Trend analysis
Interactive visualizations
