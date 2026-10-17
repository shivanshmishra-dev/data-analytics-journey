-- Day 26: Final SQL Assessment

-- 1. Filtering and Sorting
SELECT employee_name, salary
FROM Employees
WHERE salary > 50000
ORDER BY salary DESC;

-- 2. Conditional Aggregation
SELECT
    department,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN salary >= 50000 THEN 1 ELSE 0 END)
        AS high_salary_employees,
    AVG(salary) AS average_salary
FROM Employees
GROUP BY department;

-- 3. Window Functions: Department Ranking
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
SELECT *
FROM ranked_employees
WHERE salary_rank <= 3;

-- 4. Date Range Filtering
-- Prefer a range for index-friendly date filtering.
SELECT *
FROM Orders
WHERE order_date >= '2026-01-01'
  AND order_date < '2027-01-01';

-- 5. String Functions
SELECT
    name,
    UPPER(LEFT(name, 1)) AS first_letter_upper,
    LOWER(name) AS lowercase_name
FROM Employees;

-- 6. LIKE and Wildcards
SELECT *
FROM Employees
WHERE employee_name LIKE 'A%';

-- % = zero or more characters
-- _ = exactly one character

-- 7. Find Duplicate Emails
SELECT
    email,
    COUNT(*) AS duplicate_count
FROM Users
GROUP BY email
HAVING COUNT(*) > 1;

-- 8. Query Performance Analysis
EXPLAIN
SELECT employee_name, salary
FROM Employees
WHERE department = 'IT';

-- Final Assessment: Revision Notes

-- Strong:
-- SELECT, filtering, ranking, CTEs, aggregation

-- Needs more practice:
-- Date functions and string functions
-- LIKE patterns and date-range filtering

-- Needs conceptual revision:
-- Index trade-offs
-- EXPLAIN execution plans
-- Query optimization using measured evidence
