-- Day 3 - SQL JOIN Practice
-- SQLBolt + LeetCode SQL 50
-- SQLBolt JOIN Practice

-- INNER JOIN
SELECT employees.name, departments.department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id;


-- LEFT JOIN
SELECT employees.name, departments.department_name
FROM employees
LEFT JOIN departments
ON employees.department_id = departments.department_id;


-- RIGHT JOIN
SELECT employees.name, departments.department_name
FROM employees
RIGHT JOIN departments
ON employees.department_id = departments.department_id;


-- JOIN with WHERE condition
SELECT employees.name, departments.department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id
WHERE departments.department_name = 'IT';


-- =========================================
-- LeetCode SQL 50
-- =========================================

-- Q1: Replace Employee ID With The Unique Identifier
SELECT EmployeeUNI.unique_id, Employees.name
FROM Employees
LEFT JOIN EmployeeUNI
ON Employees.id = EmployeeUNI.id;


-- Q2: Product Sales Analysis I
SELECT Product.product_name, Sales.year, Sales.price
FROM Product
INNER JOIN Sales
ON Product.product_id = Sales.product_id;