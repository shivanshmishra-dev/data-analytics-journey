-- ============================================
-- DAY 17: ADVANCED DATE & TIME FUNCTIONS
-- ============================================

-- 1. Date range filtering
SELECT
    order_id,
    customer_id,
    order_date,
    amount
FROM Orders
WHERE order_date BETWEEN '2026-01-01' AND '2026-01-31';


-- 2. Orders from the last 7 days
SELECT
    order_id,
    customer_id,
    order_date,
    amount
FROM Orders
WHERE DATEDIFF(CURRENT_DATE, order_date) <= 7;


-- 3. Group orders by year and month
SELECT
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    COUNT(*) AS total_orders,
    SUM(amount) AS total_revenue
FROM Orders
GROUP BY
    YEAR(order_date),
    MONTH(order_date);


-- 4. Monthly analysis using DATE_FORMAT()
SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS order_month,
    COUNT(*) AS total_orders,
    SUM(amount) AS total_revenue
FROM Orders
GROUP BY DATE_FORMAT(order_date, '%Y-%m');


-- 5. Conditional aggregation by date
SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS order_month,
    COUNT(*) AS total_orders,
    COUNT(
        CASE
            WHEN status = 'completed' THEN 1
        END
    ) AS completed_orders
FROM Orders
GROUP BY DATE_FORMAT(order_date, '%Y-%m');


-- 6. LeetCode 1193 - Monthly Transactions I
SELECT
    DATE_FORMAT(trans_date, '%Y-%m') AS month,
    country,
    COUNT(amount) AS trans_count,
    SUM(amount) AS trans_total_amount,
    COUNT(
        CASE
            WHEN status = 'approved' THEN 1
        END
    ) AS approved_count,
    SUM(
        CASE
            WHEN status = 'approved' THEN amount
            ELSE 0
        END
    ) AS approved_total_amount
FROM Transactions
GROUP BY
    DATE_FORMAT(trans_date, '%Y-%m'),
    country;


-- 7. LeetCode 1174 - Immediate Food Delivery II
SELECT
    ROUND(
        COUNT(
            CASE
                WHEN d.order_date = d.customer_pref_delivery_date
                THEN 1
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS immediate_percentage
FROM (
    SELECT
        customer_id,
        MIN(order_date) AS first_order_date
    FROM Delivery
    GROUP BY customer_id
) first_orders
JOIN Delivery d
    ON d.customer_id = first_orders.customer_id
    AND d.order_date = first_orders.first_order_date;