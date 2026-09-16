-- ============================================
-- DAY 14: WINDOW FUNCTIONS - PART 2
-- ============================================


-- 1. Running Total
SELECT
    order_id,
    customer_id,
    amount,
    SUM(amount) OVER(
        PARTITION BY customer_id
        ORDER BY order_id
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS "running_total"
FROM Orders;


-- 2. Running Average
SELECT
    order_id,
    customer_id,
    amount,
    AVG(amount) OVER(
        PARTITION BY customer_id
        ORDER BY order_id
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS "running_avg"
FROM Orders;


-- 3. Moving Average
-- Current row + previous 1 row
SELECT
    order_id,
    customer_id,
    amount,
    AVG(amount) OVER(
        PARTITION BY customer_id
        ORDER BY order_id
        ROWS BETWEEN 1 PRECEDING AND CURRENT ROW
    ) AS "moving_avg"
FROM Orders;


-- 4. Moving Average - Previous 2 Rows + Current Row
SELECT
    order_id,
    customer_id,
    amount,
    AVG(amount) OVER(
        PARTITION BY customer_id
        ORDER BY order_id
        ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
    ) AS "moving_avg_3_rows"
FROM Orders;


-- 5. Running Total with CTE
WITH order_totals AS (
    SELECT
        order_id,
        customer_id,
        amount,
        SUM(amount) OVER(
            PARTITION BY customer_id
            ORDER BY order_id
            ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
        ) AS "running_total"
    FROM Orders
)
SELECT
    order_id,
    customer_id,
    amount,
    running_total
FROM order_totals;


-- 6. LeetCode 185
-- Department Top Three Salaries

WITH ranked_employees AS (
    SELECT
        id,
        name,
        departmentId,
        salary,
        DENSE_RANK() OVER(
            PARTITION BY departmentId
            ORDER BY salary DESC
        ) AS "salary_rank"
    FROM Employee
)
SELECT
    de.name AS Department,
    re.name AS Employee,
    re.salary AS Salary
FROM ranked_employees AS re
JOIN Department AS de
    ON re.departmentId = de.id
WHERE salary_rank <= 3;