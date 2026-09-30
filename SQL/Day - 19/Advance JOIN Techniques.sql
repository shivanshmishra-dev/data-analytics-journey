-- DAY 19: ADVANCED JOIN TECHNIQUES

-- 1. MULTIPLE JOINS

SELECT
    c.customer_name,
    o.order_id,
    p.product_name
FROM Customers c
JOIN Orders o
    ON c.customer_id = o.customer_id
JOIN Products p
    ON o.product_id = p.product_id;

-- 2. JOIN CONDITIONS USING ON

SELECT
    c.customer_name,
    o.order_id,
    o.amount
FROM Customers c
JOIN Orders o
    ON c.customer_id = o.customer_id
    AND o.status = 'Completed';

-- 3. LEFT JOIN
-- Find all customers including customers
-- who have no orders

SELECT
    c.customer_id,
    c.customer_name,
    o.order_id
FROM Customers c
LEFT JOIN Orders o
    ON c.customer_id = o.customer_id;

-- 4. LEFT JOIN AS ANTI-JOIN
-- Find customers who have no orders

SELECT
    c.customer_id,
    c.customer_name
FROM Customers c
LEFT JOIN Orders o
    ON c.customer_id = o.customer_id
WHERE o.customer_id IS NULL;

-- 5. JOIN + AGGREGATION
-- Calculate total sales for each customer

SELECT
    c.customer_id,
    c.customer_name,
    SUM(o.amount) AS total_sales
FROM Customers c
JOIN Orders o
    ON c.customer_id = o.customer_id
GROUP BY
    c.customer_id,
    c.customer_name;

-- 6. MULTIPLE TABLES + GROUP BY
-- Calculate department-wise total sales

SELECT
    d.department_name,
    SUM(o.amount) AS total_sales
FROM Departments d
JOIN Employees e
    ON d.department_id = e.department_id
JOIN Orders o
    ON e.employee_id = o.employee_id
GROUP BY
    d.department_name;

-- 7. LEFT JOIN + AGGREGATION
-- Include customers with zero orders

SELECT
    c.customer_id,
    c.customer_name,
    COUNT(o.order_id) AS total_orders
FROM Customers c
LEFT JOIN Orders o
    ON c.customer_id = o.customer_id
GROUP BY
    c.customer_id,
    c.customer_name;

-- LEETCODE SQL 50

-- #577 - Employee Bonus

SELECT
    e.name,
    b.bonus
FROM Employee e
LEFT JOIN Bonus b
    ON e.empId = b.empId
WHERE b.bonus < 1000
   OR b.bonus IS NULL;

-- #1934 - Confirmation Rate

SELECT
    s.user_id,
    ROUND(
        IFNULL(
            COUNT(
                CASE
                    WHEN c.action = 'confirmed' THEN 1
                END
            ) / COUNT(c.action),
            0
        ),
        2
    ) AS confirmation_rate
FROM Signups s
LEFT JOIN Confirmations c
    ON s.user_id = c.user_id
GROUP BY
    s.user_id;