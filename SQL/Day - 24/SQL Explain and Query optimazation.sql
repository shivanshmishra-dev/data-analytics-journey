-- Day 24: EXPLAIN & Query Optimization
-- 1. Basic EXPLAIN
EXPLAIN
SELECT *
FROM Employees
WHERE employee_id = 101;

-- 2. EXPLAIN with a filtering condition
EXPLAIN
SELECT
    employee_name,
    salary
FROM Employees
WHERE department = 'IT';

-- 3. Create an index for optimization
CREATE INDEX idx_employee_department
ON Employees(department);

-- 4. Check the execution plan after creating the index
EXPLAIN
SELECT
    employee_name,
    salary
FROM Employees
WHERE department = 'IT';

-- 5. Composite Index
CREATE INDEX idx_department_salary
ON Employees(department, salary);

-- 6. Query using the composite index
EXPLAIN
SELECT
    employee_name,
    salary
FROM Employees
WHERE department = 'IT'
  AND salary > 50000;

-- 7. Avoid SELECT * when only specific columns are required
SELECT
    employee_name,
    salary
FROM Employees
WHERE department = 'IT';

-- 8. Date filtering: avoid unnecessary functions
-- Less index-friendly approach:
EXPLAIN
SELECT *
FROM Orders
WHERE YEAR(order_date) = 2026;

-- More index-friendly range filtering:
EXPLAIN
SELECT *
FROM Orders
WHERE order_date >= '2026-01-01'
  AND order_date < '2027-01-01';

-- 9. Drop indexes after practice
DROP INDEX idx_employee_department ON Employees;

DROP INDEX idx_department_salary ON Employees;

-- Key Notes

-- EXPLAIN:
-- Shows the execution plan of a SQL query.

-- type:
-- Indicates how MySQL accesses the data.
-- ALL = Full Table Scan
-- range = Range-based index access
-- ref = Index lookup using a non-unique value
-- const = Very efficient lookup for a constant value

-- key:
-- Shows the index MySQL chooses to use.

-- rows:
-- Shows the estimated number of rows MySQL may examine.

-- Extra:
-- Provides additional execution details.

-- Query Optimization:
-- 1. Use appropriate indexes.
-- 2. Select only required columns.
-- 3. Avoid unnecessary functions on indexed columns.
-- 4. Analyze queries using EXPLAIN.
-- 5. Use composite indexes carefully.