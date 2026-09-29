-- ============================================
-- DAY 18: SQL STRING FUNCTIONS
-- ============================================

-- 1. UPPER() and LOWER()
SELECT
    UPPER(name) AS upper_name,
    LOWER(name) AS lower_name
FROM Users;


-- 2. TRIM()
SELECT
    TRIM(name) AS cleaned_name
FROM Users;


-- 3. LENGTH()
SELECT
    name,
    LENGTH(name) AS name_length
FROM Users;


-- 4. CONCAT()
SELECT
    CONCAT(first_name, ' ', last_name) AS full_name
FROM Employees;


-- 5. CONCAT_WS()
SELECT
    CONCAT_WS(' - ', first_name, last_name, department)
        AS employee_details
FROM Employees;


-- 6. LEFT() and RIGHT()
SELECT
    name,
    LEFT(name, 3) AS first_three,
    RIGHT(name, 3) AS last_three
FROM Users;


-- 7. SUBSTRING()
SELECT
    name,
    SUBSTRING(name, 2) AS name_from_second_character
FROM Users;


-- 8. REPLACE()
SELECT
    name,
    REPLACE(name, 'a', '@') AS modified_name
FROM Users;


-- 9. LIKE with %
SELECT
    patient_id,
    patient_name,
    conditions
FROM Patients
WHERE conditions LIKE 'DIAB1%';


-- 10. LIKE with % for a condition appearing after a space
SELECT
    patient_id,
    patient_name,
    conditions
FROM Patients
WHERE conditions LIKE 'DIAB1%'
   OR conditions LIKE '% DIAB1%';


-- ============================================
-- LEETCODE SQL 50
-- ============================================

-- #1667 - Fix Names in a Table

SELECT
    user_id,
    CONCAT(
        UPPER(LEFT(name, 1)),
        LOWER(SUBSTRING(name, 2))
    ) AS name
FROM Users
ORDER BY user_id;


-- #1527 - Patients With a Condition

SELECT
    patient_id,
    patient_name,
    conditions
FROM Patients
WHERE conditions LIKE 'DIAB1%'
   OR conditions LIKE '% DIAB1%';