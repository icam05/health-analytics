-- =========================================
-- LOAD CSV DATA INTO SQL SERVER
-- =========================================

-- Update this path to your local machine location
DECLARE @dataPath VARCHAR(500) = 'C:\Users\Ian\Downloads\health-analytics\data\raw\';

BULK INSERT patients
FROM @dataPath + 'patients.csv'
WITH (FIRSTROW = 2, FIELDTERMINATOR = ',', ROWTERMINATOR = '\n');

BULK INSERT doctors
FROM @dataPath + 'doctors.csv'
WITH (FIRSTROW = 2, FIELDTERMINATOR = ',', ROWTERMINATOR = '\n');

BULK INSERT hospitals
FROM @dataPath + 'hospitals.csv'
WITH (FIRSTROW = 2, FIELDTERMINATOR = ',', ROWTERMINATOR = '\n');

BULK INSERT medical_conditions
FROM @dataPath + 'medical_conditions.csv'
WITH (FIRSTROW = 2, FIELDTERMINATOR = ',', ROWTERMINATOR = '\n');

BULK INSERT medications
FROM @dataPath + 'medications.csv'
WITH (FIRSTROW = 2, FIELDTERMINATOR = ',', ROWTERMINATOR = '\n');

BULK INSERT insurance_providers
FROM @dataPath + 'insurance_providers.csv'
WITH (FIRSTROW = 2, FIELDTERMINATOR = ',', ROWTERMINATOR = '\n');

BULK INSERT encounters
FROM @dataPath + 'encounters.csv'
WITH (FIRSTROW = 2, FIELDTERMINATOR = ',', ROWTERMINATOR = '\n');


