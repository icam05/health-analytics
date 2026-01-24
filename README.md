Health Analytics Dashboard Pipeline

A complete healthcare analytics project built using SQL Server, Python, R, and Power BI.
This repository demonstrates end-to-end data engineering and analytics skills including:

Data ingestion from CSV files

SQL data modeling and table creation

Bulk loading of healthcare datasets

A Power BI analytics dashboard (PBIP project)

Reproducible ETL scripts

Clean, organized project structure suitable for professional portfolios

This project simulates the analytics workflows used across MLTCs, Health Plans, Hospice, and Managed Care organizations—similar to environments such as Reveleer, CCNY, Sentara Health Plans, and HomeCare Partners.

Table of Contents

Project Overview

Tech Stack

Repository Structure

Dataset Description

SQL Server Setup

Python ETL Script

Power BI Dashboard

R Statistical Analysis (Optional Extension)

Future Improvements

License

Project Overview

This project provides a full analytics workflow for healthcare data involving:

Patients

Encounters

Doctors

Hospitals

Medical Conditions

Insurance Providers

Medications

The Power BI dashboard includes:

Patient demographics

Admission trends

Medical condition distribution

Hospital utilization metrics

Doctor activity

Age-group segmentations

Interactive matrix filters

This structure mirrors real health-plan reporting pipelines used in:

Quality Improvement

Utilization Management

Risk Adjustment

Care Management

Population Health Analytics

Tech Stack
Languages & Tools

Python — ETL, automation, bulk load operations

SQL Server — data modeling, querying, DDL/DML

Power BI Desktop (PBIP) — dashboarding, data modeling

R (optional) — statistical analysis and data science

GitHub — version control, collaboration

VS Code — development environment

Core Skills Demonstrated

SQL Data Modeling

Data Engineering Foundations

ETL Pipeline Design (Python + SQL)

Power BI Data Modeling & Visualization

Healthcare Analytics (Claims, Encounters, Utilization)

GitHub Project Organization

Repository Structure

Repository Structure


health-analytics/
│
├── data/
│   └── raw/                   # Source CSV files used for ingestion
│
├── ingestion/
│   └── load_to_sql.py         # Python script to load CSVs into SQL Server
│
├── powerbi/
│   └── health_dashboard/      # Full Power BI PBIP project
│
├── sql/
│   ├── 01_create_tables.sql   # SQL DDL – creates healthcare data tables
│   └── 02_load_data.sql       # Bulk inserts CSV data into SQL Server
│
├── .gitignore
├── LICENSE
└── README.md


SQL Server Setup
1. Create the database tables

Run:
sql/01_create_tables.sql
This script creates the following tables:

patients
doctors
hospitals
medical_conditions
medications
insurance_providers
encounters

All relationships are represented via foreign keys.

2. Load the dataset
Then run:
sql/02_load_data.sql
This script uses BULK INSERT to load CSVs from your machine into SQL Server.
Update the @dataPath variable before running.


Python ETL Script

The ingestion pipeline is located at:
ingestion/load_to_sql.py
This script demonstrates:

Reading CSV files using Python

Connecting to SQL Server using pyodbc or similar driver

Loading tables programmatically

Handling ingestion in a consistent, repeatable manner

Providing a foundation for future automation (Airflow, ADF, Cron, etc.)
Power BI Dashboard

The complete Power BI project lives under:
powerbi/health_dashboard/

This folder contains all PBIP artifacts, including:

Report pages

Data model

Visualizations

Formatting

Relationships

Query dependencies

To open the dashboard:

Clone or download the repo

Open the PBIP folder in Power BI Desktop

Update the SQL Server connection string in Power Query

Refresh the model

Your dashboard will immediately load based on the SQL data.

R Statistical Analysis (Optional Extension)

An optional R-based component can be added for advanced analytics, such as:

Hypothesis testing (χ², t-tests, ANOVA)

Logistic regression (e.g., readmission risk)

ggplot2 visualizations

Exploratory data analysis

When added, these would live under:
/r/

Future Improvements

Planned enhancements include:

Adding a dimensional star-schema version (FACT + DIM tables)

Creating a second Power BI model optimized for star-schema design

Adding advanced DAX measures (clinical KPIs, risk scoring)

Creating an Azure or Databricks cloud-based ingestion pipeline

Adding ML-based predictive modeling (risk adjustment, readmission risk)

Publishing a live Power BI dashboard online

License

This project is open-source and available under the MIT License.



