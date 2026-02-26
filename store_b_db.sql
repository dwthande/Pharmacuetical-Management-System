-- Drop and recreate Medications table
DROP TABLE IF EXISTS Medications;

CREATE TABLE Medications (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE,
    quantity INT NOT NULL,
    manufacturer VARCHAR(100),
    expiry_date DATE
);

-- Insert 100 sample medications (including overlapping and unique items)
INSERT INTO Medications (name, quantity, manufacturer, expiry_date) VALUES
('Paracetamol Max', 150, 'MedixPlus', '2026-01-01'),
('Ibuprofen Ultra', 120, 'HealWell', '2025-12-15'),
('Amoxicillin 500mg', 90, 'BioPharma', '2026-06-20'),
('Cough Syrup Adult', 110, 'PharmaCo', '2026-02-25'),
('Aspirin Baby', 130, 'CardioMeds', '2025-10-15'),
('Loratadine 10mg', 75, 'AllergyFree', '2026-06-05'),
('Omeprazole 20mg', 55, 'DigestWell', '2026-07-20'),
('Metformin XR', 160, 'GlucoHealth', '2027-03-10'),
('Atorvastatin 20mg', 85, 'CholesterolCare', '2026-09-25'),
('Levothyroxine 50mcg', 100, 'ThyroidLife', '2027-01-10'),
-- 10 items...
('Albuterol Nebulizer', 60, 'RespiraMed', '2026-04-15'),
('Salbutamol Tablets', 55, 'BreatheEasy', '2026-07-05'),
('Cetirizine 20mg', 125, 'AllergyMed', '2026-08-18'),
('Clarithromycin 250mg', 45, 'BioPharma', '2026-11-20'),
('Pantoprazole EC', 90, 'DigestWell', '2027-02-25'),
('Simvastatin 40mg', 80, 'CholesterolCare', '2026-01-05'),
('Prednisone 10mg', 65, 'ImmuneGuard', '2026-03-20'),
('Doxycycline 100mg', 70, 'AntibioticPlus', '2026-10-10'),
('Azithromycin 500mg', 85, 'BioPharma', '2026-12-22'),
('Naproxen 500mg', 110, 'PainAway', '2025-12-05'),
('Hydrochlorothiazide 25mg', 75, 'KidneyCare', '2027-04-15'),
-- 20 items...
('Furosemide 40mg', 50, 'WaterBalance', '2026-09-05'),
('Losartan 50mg', 60, 'BloodPressureX', '2027-06-20'),
('Warfarin 5mg', 35, 'BloodClotCare', '2026-11-30'),
('Clopidogrel 75mg', 55, 'HeartSafe', '2026-05-10'),
('Metoprolol 25mg', 90, 'HeartHealth', '2026-09-05'),
('Enalapril 20mg', 70, 'BloodPressureX', '2027-02-25'),
('Insulin Glargine U100', 60, 'GlucoHealth', '2026-12-10'),
('Insulin Lispro U100', 65, 'GlucoHealth', '2026-10-15'),
('Ranitidine 150mg', 95, 'DigestWell', '2025-09-25'),
('Clonazepam 0.5mg', 45, 'NeuroCare', '2026-07-10'),
('Diazepam 5mg', 40, 'NeuroCare', '2026-04-20'),
-- 30 items...
('Tamsulosin 0.4mg', 80, 'ProstateEase', '2027-03-20'),
('Levocetirizine 5mg', 100, 'AllergyMed', '2026-05-28'),
('Gabapentin 300mg', 60, 'NeuroCare', '2026-11-15'),
('Sertraline 50mg', 70, 'MindWell', '2026-12-25'),
('Fluoxetine 20mg', 85, 'MindWell', '2027-02-05'),
('Omeprazole SR 40mg', 90, 'DigestWell', '2026-09-25'),
('Cetirizine Sugar-Free', 88, 'AllergyFree', '2027-02-05'),
('Tramadol 50mg', 45, 'PainAway', '2025-11-15'),
('Morphine 10mg', 35, 'PainAway', '2027-04-05'),
('Nitroglycerin Spray', 55, 'HeartSafe', '2026-06-10'),
('Clindamycin 300mg', 50, 'AntibioticPlus', '2026-10-20'),
-- 40 items...
('Flucloxacillin 500mg', 60, 'AntibioticPlus', '2026-12-05'),
('Risperidone 2mg', 70, 'MindWell', '2027-02-18'),
('Olanzapine 10mg', 75, 'MindWell', '2026-08-15'),
('Metamizole 500mg', 80, 'PainAway', '2026-04-25'),
('Zyrtec 10mg', 65, 'AllergyFree Inc.', '2026-08-05'),
('Eye Drops Ultra', 85, 'VisionPlus', '2025-09-05'),
('Glucosamine 500mg', 55, 'JointHealth', '2027-03-20'),
('Chondroitin 600mg', 60, 'JointHealth', '2026-11-15'),
('Calcium+D Tablets', 65, 'BoneHealth', '2027-06-05'),
('Turmeric Curcumin 500mg', 50, 'NaturalHealth', '2026-12-05'),
-- 50 items...
('Green Tea Extract 300mg', 80, 'HerbalWell', '2027-02-05'),
('Ashwagandha 500mg', 40, 'HerbalWell', '2026-05-10'),
('Echinacea 400mg', 45, 'ImmuneBoost', '2026-07-25'),
('St John’s Wort 300mg', 30, 'MoodSupport', '2027-01-15'),
('Omega 3 Fish Oil 1000mg', 70, 'HeartSupplements', '2027-06-25'),
('Melatonin 5mg Extended', 60, 'SleepAid', '2026-01-20'),
('Vitamin D3 2000IU', 100, 'NutriHealth', '2027-03-10'),
('Vitamin B12 1000mcg', 75, 'NutriHealth', '2026-09-10'),
('Probiotic 50B', 55, 'GutHealthPlus', '2027-01-20'),
('CoQ10 200mg', 40, 'NutriHealth', '2026-05-15'),
-- 60 items...
('Zinc Gluconate 50mg', 65, 'ImmuneBoost', '2026-09-15'),
('Iron Ferrous Sulfate 325mg', 50, 'NutriHealth', '2027-02-10'),
('Magnesium Citrate 250mg', 60, 'MineralHealth', '2026-12-15'),
('B Complex Vitamin', 80, 'NutriHealth', '2026-08-25'),
('Probiotic 100B', 70, 'GutHealthPlus', '2027-01-30'),
('Hydrocodone 10mg', 55, 'PainRelief Ltd', '2025-11-10'),
('Cough Syrup Kids', 90, 'PharmaCo', '2027-03-25'),
('Albuterol Inhaler', 65, 'Respira', '2026-04-20'),
('Cetirizine 5mg DS', 95, 'AllergyMed', '2026-08-20'),
('Ibuprofen Liquid', 70, 'HealWell', '2025-12-20'),
-- 70 items...
('Paracetamol Chewable', 120, 'Medix', '2026-01-10'),
('Clarithromycin 500mg', 55, 'BioPharma', '2026-11-25'),
('Omeprazole 10mg', 80, 'DigestWell', '2026-09-20'),
('Simvastatin 10mg', 90, 'CholesterolCare', '2025-12-10'),
('Losartan 100mg', 75, 'BloodPressureX', '2027-06-10'),
('Metformin 500mg', 150, 'GlucoHealth', '2027-02-28'),
('Levothyroxine 100mcg', 105, 'ThyroidLife', '2027-01-20'),
('Furosemide 20mg', 70, 'WaterBalance', '2026-09-10'),
('Hydrochlorothiazide 50mg', 85, 'KidneyCare', '2027-04-20'),
('Warfarin 3mg', 45, 'BloodClotCare', '2026-12-05'),
-- 80 items... continue to 100
('Clopidogrel 150mg', 60, 'HeartSafe', '2026-05-15'),
('Metoprolol 50mg', 100, 'HeartHealth', '2026-08-10'),
('Enalapril 10mg', 65, 'BloodPressureX', '2027-02-15'),
('Azithromycin 250mg', 95, 'BioPharma', '2026-12-20'),
('Doxycycline 50mg', 85, 'AntibioticPlus', '2026-10-12'),
('Prednisone 20mg', 70, 'ImmuneGuard', '2026-03-18'),
('Pantoprazole 20mg', 90, 'DigestWell', '2027-02-20'),
('Clindamycin 150mg', 55, 'AntibioticPlus', '2026-10-18'),
('Nitroglycerin Tabs', 65, 'HeartSafe', '2026-06-15'),
('Morphine Syrup', 40, 'PainAway', '2027-04-10'),
('Tramadol 100mg', 50, 'PainAway', '2025-11-20'),
('Olanzapine 5mg', 70, 'MindWell', '2026-08-10'),
('Risperidone 1mg', 80, 'MindWell', '2027-02-20'),
('Metamizole 250mg', 90, 'PainAway', '2026-04-30'),
('Zyrtec Liquid', 75, 'AllergyFree Inc.', '2026-08-10'),
('Vitamin C 500mg', 90, 'NutriHealth', '2027-03-15'),
('Melatonin Gummies', 65, 'SleepAid', '2026-01-25'),
('CoQ10 100mg', 50, 'NutriHealth', '2026-05-10'),
('Turmeric Curcumin 250mg', 55, 'NaturalHealth', '2026-12-10'),
('Green Tea Extract 500mg', 85, 'HerbalWell', '2027-02-10'),
('Ashwagandha 250mg', 45, 'HerbalWell', '2026-05-15');

SELECT * FROM Medications;

DROP TABLE IF EXISTS DeliveryLog;

CREATE TABLE DeliveryLog (
    id SERIAL PRIMARY KEY,
    medication_name VARCHAR(100),
    delivery_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    destination_store VARCHAR(50) DEFAULT 'StoreA'
);

DROP TABLE IF EXISTS InventoryRequests;

CREATE TABLE InventoryRequests (
    id SERIAL PRIMARY KEY,
    medication_name VARCHAR(100) NOT NULL,
    request_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(50) DEFAULT 'PENDING',         -- Store A status
    response VARCHAR(50),                         -- Store B response (INSTORE / OUTSTORE)
    delivery_status VARCHAR(50) DEFAULT 'NOT_DELIVERED'
);
    
