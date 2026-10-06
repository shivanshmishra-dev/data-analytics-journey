-- Day 23: SQL Indexes & Query Performance
-- 1. Create a single-column index
CREATE INDEX idx_employee_name
ON Employees(employee_name);


-- 2. Query using the indexed column
SELECT *
FROM Employees
WHERE employee_name = 'John';


-- 3. Create a composite index
CREATE INDEX idx_department_salary
ON Employees(department, salary);


-- 4. Query using composite index columns
SELECT *
FROM Employees
WHERE department = 'IT'
  AND salary > 50000;


-- 5. Check query execution plan
EXPLAIN
SELECT *
FROM Employees
WHERE employee_name = 'John';


-- 6. Drop a single-column index
DROP INDEX idx_employee_name ON Employees;


-- 7. Drop the composite index
DROP INDEX idx_department_salary ON Employees;