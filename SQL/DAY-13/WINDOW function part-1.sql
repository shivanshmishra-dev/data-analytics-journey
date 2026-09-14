-- ============================================
-- DAY 13: WINDOW FUNCTIONS - PART 1
-- ============================================

-- 1. AVG() OVER()
SELECT
    employee_id,
    name,
    salary,
    AVG(salary) OVER() AS avg_salary
FROM Employees;


-- 2. AVG() OVER(PARTITION BY)
SELECT
    employee_id,
    name,
    department_id,
    salary,
    AVG(salary) OVER(
        PARTITION BY department_id
    ) AS department_avg_salary
FROM Employees;


-- 3. SUM() OVER(PARTITION BY)
SELECT
    employee_id,
    name,
    department_id,
    salary,
    SUM(salary) OVER(
        PARTITION BY department_id
    ) AS department_total_salary
FROM Employees;


-- 4. ROW_NUMBER()
SELECT
    employee_id,
    name,
    department_id,
    salary,
    ROW_NUMBER() OVER(
        PARTITION BY department_id
        ORDER BY salary DESC
    ) AS row_num
FROM Employees;


-- 5. RANK()
SELECT
    employee_id,
    name,
    department_id,
    salary,
    RANK() OVER(
        PARTITION BY department_id
        ORDER BY salary DESC
    ) AS salary_rank
FROM Employees;


-- 6. DENSE_RANK()
SELECT
    employee_id,
    name,
    department_id,
    salary,
    DENSE_RANK() OVER(
        PARTITION BY department_id
        ORDER BY salary DESC
    ) AS dense_salary_rank
FROM Employees;


-- 7. ROW_NUMBER vs RANK vs DENSE_RANK
SELECT
    employee_id,
    name,
    department_id,
    salary,
    ROW_NUMBER() OVER(
        PARTITION BY department_id
        ORDER BY salary DESC
    ) AS row_num,
    RANK() OVER(
        PARTITION BY department_id
        ORDER BY salary DESC
    ) AS salary_rank,
    DENSE_RANK() OVER(
        PARTITION BY department_id
        ORDER BY salary DESC
    ) AS dense_salary_rank
FROM Employees;


-- 8. Highest-paid employee in each department
WITH ranked_employees AS (
    SELECT
        employee_id,
        name,
        department_id,
        salary,
        ROW_NUMBER() OVER(
            PARTITION BY department_id
            ORDER BY salary DESC
        ) AS row_num
    FROM Employees
)
SELECT
    employee_id,
    name,
    department_id,
    salary
FROM ranked_employees
WHERE row_num = 1;


-- 9. LAG()
SELECT
    employee_id,
    name,
    department_id,
    salary,
    LAG(salary) OVER(
        PARTITION BY department_id
        ORDER BY salary DESC
    ) AS previous_salary
FROM Employees;


-- 10. LEAD()
SELECT
    employee_id,
    name,
    department_id,
    salary,
    LEAD(salary) OVER(
        PARTITION BY department_id
        ORDER BY salary DESC
    ) AS next_salary
FROM Employees;


-- 11. FIRST_VALUE()
SELECT
    employee_id,
    name,
    department_id,
    salary,
    FIRST_VALUE(salary) OVER(
        PARTITION BY department_id
        ORDER BY salary DESC
    ) AS highest_salary
FROM Employees;


-- 12. LAST_VALUE() + Window Frame
SELECT
    employee_id,
    name,
    department_id,
    salary,
    LAST_VALUE(salary) OVER(
        PARTITION BY department_id
        ORDER BY salary DESC
        ROWS BETWEEN UNBOUNDED PRECEDING
        AND UNBOUNDED FOLLOWING
    ) AS lowest_salary
FROM Employees;


-- 13. LeetCode 1070
-- Product Sales Analysis III

WITH f_year AS (
    SELECT
        product_id,
        year,
        quantity,
        price,
        MIN(year) OVER(
            PARTITION BY product_id
        ) AS first_year
    FROM Sales
)
SELECT
    product_id,
    first_year,
    quantity,
    price
FROM f_year
WHERE year = first_year;