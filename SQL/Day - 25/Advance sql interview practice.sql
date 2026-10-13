-- Day 25: Advanced SQL Interview Problems
-- 1. Second-Highest Salary
WITH ranked_salaries AS (
    SELECT
        employee_name,
        salary,
        DENSE_RANK() OVER (
            ORDER BY salary DESC
        ) AS salary_rank
    FROM Employees
)
SELECT employee_name, salary
FROM ranked_salaries
WHERE salary_rank = 2;


-- 2. Top 3 Salaries in Each Department
WITH ranked_employees AS (
    SELECT
        employee_name,
        department,
        salary,
        DENSE_RANK() OVER (
            PARTITION BY department
            ORDER BY salary DESC
        ) AS salary_rank
    FROM Employees
)
SELECT employee_name, department, salary
FROM ranked_employees
WHERE salary_rank <= 3;


-- 3. Find Duplicate Email Addresses
SELECT
    email,
    COUNT(*) AS duplicate_count
FROM Users
GROUP BY email
HAVING COUNT(*) > 1;


-- 4. Find the Latest Order for Each Customer
WITH ranked_orders AS (
    SELECT
        order_id,
        customer_id,
        order_date,
        ROW_NUMBER() OVER (
            PARTITION BY customer_id
            ORDER BY order_date DESC, order_id DESC
        ) AS rn
    FROM Orders
)
SELECT order_id, customer_id, order_date
FROM ranked_orders
WHERE rn = 1;


-- 5. Find Customers Who Have Never Placed an Order
SELECT c.customer_id, c.customer_name
FROM Customers c
WHERE NOT EXISTS (
    SELECT 1
    FROM Orders o
    WHERE o.customer_id = c.customer_id
);


-- 6. Conditional Aggregation
SELECT
    department,
    COUNT(*) AS total_employees,
    SUM(
        CASE
            WHEN salary >= 50000 THEN 1
            ELSE 0
        END
    ) AS high_salary_employees,
    AVG(salary) AS average_salary
FROM Employees
GROUP BY department;


-- 7. CTE + Window Function:
-- Employees Earning More Than Their Department Average
WITH department_salary AS (
    SELECT
        employee_name,
        department,
        salary,
        AVG(salary) OVER (
            PARTITION BY department
        ) AS department_avg_salary
    FROM Employees
)
SELECT
    employee_name,
    department,
    salary,
    department_avg_salary
FROM department_salary
WHERE salary > department_avg_salary;


-- ============================================
-- Interview Notes
-- ============================================

-- DENSE_RANK():
-- Assigns the same rank to tied values without gaps.

-- ROW_NUMBER():
-- Assigns a unique sequential number to each row.

-- GROUP BY + HAVING:
-- Groups records and filters groups using aggregate conditions.

-- NOT EXISTS:
-- Finds rows for which no matching record exists.

-- Conditional Aggregation:
-- Uses CASE inside aggregate functions to calculate
-- multiple metrics in a single query.

-- CTE:
-- Makes complex SQL queries easier to structure and read.
