-- Day 22: SQL Views

-- 1. Create a View
CREATE VIEW high_salary_employees AS
SELECT
    employee_id,
    employee_name,
    salary
FROM Employees
WHERE salary > 50000;


-- 2. Select data from the View
SELECT *
FROM high_salary_employees;


-- 3. View using JOIN and Aggregation
CREATE VIEW Customer_Sales AS
SELECT
    c.customer_name,
    SUM(o.amount) AS total_sales,
    COUNT(o.order_id) AS order_count
FROM Orders o
JOIN Customers c
    ON o.customer_id = c.customer_id
GROUP BY c.customer_name;


-- 4. Select data from the View
SELECT *
FROM Customer_Sales;


-- 5. Replace an existing View
CREATE OR REPLACE VIEW Customer_Sales AS
SELECT
    c.customer_name,
    SUM(o.amount) AS total_sales,
    COUNT(o.order_id) AS order_count
FROM Orders o
JOIN Customers c
    ON o.customer_id = c.customer_id
GROUP BY c.customer_name;


-- 6. Drop a View
DROP VIEW Customer_Sales;