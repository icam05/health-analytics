# Health Analytics Dashboard Pipeline

A complete healthcare analytics project built using **SQL Server**, **Python**, **R**, and **Power BI**.  
This repository demonstrates end-to-end data engineering and analytics skills including:

- Data ingestion from CSV files  
- SQL data modeling and table creation  
- Bulk loading of healthcare datasets  
- A Power BI analytics dashboard (PBIP project)  
- Reproducible ETL scripts  
- Clean, organized project structure suitable for professional portfolios  

This project simulates the workflows used across MLTCs, Health Plans, Hospice, and Managed Care organizations—similar to environments such as **Reveleer**, **CCNY**, **Sentara Health Plans**, and **Homecare Partners**.

---

## **Table of Contents**
- [Project Overview](#project-overview)
- [Tech Stack](#tech-stack)
- [Repository Structure](#repository-structure)
- [Dataset Description](#dataset-description)
- [SQL Server Setup](#sql-server-setup)
- [Python ETL Script](#python-etl-script)
- [Power BI Dashboard](#power-bi-dashboard)
- [R Statistical Analysis (Optional Extension)](#r-statistical-analysis-optional-extension)
- [Future Improvements](#future-improvements)
- [License](#license)

---

## **Project Overview**

This project provides a full analytics workflow for healthcare data involving:
- **Patients**
- **Encounters**
- **Doctors**
- **Hospitals**
- **Medical Conditions**
- **Insurance Providers**
- **Medications**

The Power BI dashboard includes:
- Patient demographics  
- Admission trends  
- Medical condition distribution  
- Hospital utilization  
- Doctor activity  
- Age-group segmentations  
- Interactive matrix filters  

This structure mirrors real health-plan reporting pipelines used in quality improvement, utilization management, risk adjustment, and population health.

---

## **Tech Stack**

### **Languages & Tools**
- **Python** (ETL ingestion, bulk inserts)
- **SQL Server** (data modeling, DDL, DML)
- **Power BI Desktop** (PBIP project)
- **R (optional)** (statistical testing / advanced analytics)
- **GitHub** (version control)
- **VS Code** (primary editor)

### **Core Skills Demonstrated**
- SQL Data Modeling  
- Data Engineering Foundations  
- ETL Pipeline Design  
- Healthcare analytics  
- Dashboard development  
- Git/GitHub project organization  

---

## **Repository Structure**

```text
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

