/*==============================================================
  LOAD CSV DATA INTO SQL SERVER
  ---------------------------------------------------------------
  INSTRUCTIONS:

  1. Update @dataPath below to the folder containing your CSVs.
     Example:
       SET @dataPath = 'C:\Users\YourName\health-analytics\data\raw\';

  2. Ensure all tables are already created using 01_create_tables.sql

  3. Run this script inside the correct database:
       USE IngestionPlatform;
       GO
==============================================================*/

---------------------------------------------------------------
-- Set the folder path for your local CSV files
---------------------------------------------------------------
DECLARE @dataPath VARCHAR(500) = 'C:\UPDATE_THIS_PATH\';

-- Most Windows CSVs use CRLF (\r\n)
DECLARE @rowTerm NVARCHAR(10) = '\r\n';

---------------------------------------------------------------
-- OPTIONAL: Clear existing data to avoid primary key conflicts
---------------------------------------------------------------
DELETE FROM dbo.Encounters;
DELETE FROM dbo.InsuranceProviders;
DELETE FROM dbo.MedicalConditions;
DELETE FROM dbo.Medications;
DELETE FROM dbo.Hospitals;
DELETE FROM dbo.Doctors;
DELETE FROM dbo.Patients;

---------------------------------------------------------------
-- PATIENTS
---------------------------------------------------------------
BULK INSERT dbo.Patients
FROM @dataPath + 'patients.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = @rowTerm
);

---------------------------------------------------------------
-- DOCTORS
---------------------------------------------------------------
BULK INSERT dbo.Doctors
FROM @dataPath + 'doctors.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = @rowTerm
);

---------------------------------------------------------------
-- HOSPITALS
---------------------------------------------------------------
BULK INSERT dbo.Hospitals
FROM @dataPath + 'hospitals.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = @rowTerm
);

---------------------------------------------------------------
-- MEDICAL CONDITIONS
---------------------------------------------------------------
BULK INSERT dbo.MedicalConditions
FROM @dataPath + 'medical_conditions.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = @rowTerm
);

---------------------------------------------------------------
-- MEDICATIONS
---------------------------------------------------------------
BULK INSERT dbo.Medications
FROM @dataPath + 'medications.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = @rowTerm
);

---------------------------------------------------------------
-- INSURANCE PROVIDERS
---------------------------------------------------------------
BULK INSERT dbo.InsuranceProviders
FROM @dataPath + 'insurance_providers.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = @rowTerm
);

---------------------------------------------------------------
-- ENCOUNTERS
---------------------------------------------------------------
BULK INSERT dbo.Encounters
FROM @dataPath + 'encounters.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = @rowTerm
);
GO

