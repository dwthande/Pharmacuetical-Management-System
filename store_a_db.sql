
CREATE TABLE Medications (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    quantity INT NOT NULL,
    manufacturer VARCHAR(100),
    expiry_date DATE
);

INSERT INTO Medications (name, quantity, manufacturer, expiry_date) VALUES
('Paracetamol', 200, 'Medix', '2026-01-01'),
('Ibuprofen', 150, 'HealWell', '2025-12-01'),
('Amoxicillin', 100, 'BioPharma', '2026-06-15'),
('Cough Syrup', 100, 'PharmaCo', '2026-02-20'),
('Aspirin', 120, 'CardioMeds', '2025-10-10'),
('Loratadine', 80, 'AllergyFree', '2026-05-30'),
('Omeprazole', 60, 'DigestWell', '2026-07-15'),
('Metformin', 140, 'GlucoHealth', '2027-03-01'),
('Atorvastatin', 90, 'CholesterolCare', '2026-09-20'),
('Levothyroxine', 110, 'ThyroidLife', '2027-01-05'),
('Albuterol Inhaler', 70, 'Respira', '2026-04-08'),
('Salbutamol', 65, 'BreatheEasy', '2026-06-30'),
('Cetirizine', 130, 'AllergyMed', '2026-08-12'),
('Clarithromycin', 50, 'BioPharma', '2026-11-11'),
('Pantoprazole', 95, 'DigestWell', '2027-02-22'),
('Simvastatin', 85, 'CholesterolCare', '2025-12-31'),
('Prednisone', 55, 'ImmuneGuard', '2026-03-15'),
('Doxycycline', 75, 'AntibioticPlus', '2026-10-05'),
('Azithromycin', 90, 'BioPharma', '2026-12-17'),
('Naproxen', 125, 'PainAway', '2025-11-30'),
('Hydrochlorothiazide', 80, 'KidneyCare', '2027-04-10'),
('Furosemide', 60, 'WaterBalance', '2026-09-01'),
('Losartan', 70, 'BloodPressureX', '2027-06-14'),
('Warfarin', 40, 'BloodClotCare', '2026-11-25'),
('Clopidogrel', 65, 'HeartSafe', '2026-05-06'),
('Metoprolol', 95, 'HeartHealth', '2026-08-29'),
('Enalapril', 85, 'BloodPressureX', '2027-02-20'),
('Insulin Glargine', 55, 'GlucoHealth', '2026-12-05'),
('Insulin Lispro', 60, 'GlucoHealth', '2026-10-10'),
('Ranitidine', 100, 'DigestWell', '2025-09-20'),
('Clonazepam', 50, 'NeuroCare', '2026-07-07'),
('Diazepam', 45, 'NeuroCare', '2026-04-14'),
('Tamsulosin', 70, 'ProstateEase', '2027-03-17'),
('Levocetirizine', 90, 'AllergyMed', '2026-05-25'),
('Gabapentin', 55, 'NeuroCare', '2026-11-11'),
('Sertraline', 60, 'MindWell', '2026-12-22'),
('Fluoxetine', 75, 'MindWell', '2027-01-30'),
('Omeprazole SR', 80, 'DigestWell', '2026-09-15'),
('Cetirizine Sugar-Free', 85, 'AllergyFree', '2027-02-02'),
('Tramadol', 40, 'PainAway', '2025-11-12'),
('Morphine', 30, 'PainAway', '2027-04-01'),
('Nitroglycerin', 50, 'HeartSafe', '2026-06-06'),
('Clindamycin', 45, 'AntibioticPlus', '2026-10-15'),
('Flucloxacillin', 55, 'AntibioticPlus', '2026-12-01'),
('Risperidone', 60, 'MindWell', '2027-02-14'),
('Olanzapine', 65, 'MindWell', '2026-08-08'),
('Metamizole', 75, 'PainAway', '2026-04-20');

INSERT INTO Medications (name, quantity, manufacturer, expiry_date) VALUES
('Hydrocodone', 50, 'PainRelief Ltd', '2025-11-01'),
('Vitamin C Plus', 70, 'NutriHealth', '2027-03-01'),
('Melatonin', 40, 'SleepAid', '2026-01-15'),
('Coenzyme Q10', 30, 'NutriHealth', '2026-05-05'),
('Omega-3 Fish Oil', 60, 'HeartSupplements', '2027-06-20'),
('Zinc Gluconate', 50, 'ImmuneBoost', '2026-09-09'),
('Iron Ferrous Sulfate', 45, 'NutriHealth', '2027-02-18'),
('Magnesium Citrate', 55, 'MineralHealth', '2026-12-12'),
('B-Complex Vitamin', 70, 'NutriHealth', '2026-08-22'),
('Probiotic 100B', 65, 'GutHealthPlus', '2027-01-29');

SELECT * FROM Medications;

DROP TABLE IF EXISTS InventoryRequests;

CREATE TABLE InventoryRequests (
    id SERIAL PRIMARY KEY,
    medication_name VARCHAR(100) NOT NULL,
    request_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(50) DEFAULT 'PENDING',
    response VARCHAR(50),
    delivery_status VARCHAR(50) DEFAULT 'NOT_DELIVERED'
);

SELECT * FROM InventoryRequests;

CREATE INDEX idx_med_name ON Medications(name);
CREATE INDEX idx_med_mfr ON Medications(manufacturer);

SELECT COUNT(*) FROM Medications;