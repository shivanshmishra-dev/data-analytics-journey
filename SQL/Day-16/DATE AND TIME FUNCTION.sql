-- ============================================
-- DAY 16: DATE & TIME FUNCTIONS
-- ============================================

-- 1. CURRENT_DATE
SELECT CURRENT_DATE AS today;


-- 2. CURRENT_TIMESTAMP
SELECT CURRENT_TIMESTAMP AS current_datetime;


-- 3. Extract Year, Month and Day
SELECT
    order_id,
    order_date,
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    DAY(order_date) AS order_day
FROM Orders;


-- 4. Filter records using a date
SELECT
    order_id,
    customer_id,
    order_date,
    amount
FROM Orders
WHERE order_date >= '2026-01-01';


-- 5. Compare two dates
SELECT
    order_id,
    order_date,
    delivery_date
FROM Orders
WHERE delivery_date > order_date;


-- 6. Calculate date difference
SELECT
    order_id,
    order_date,
    delivery_date,
    DATEDIFF(delivery_date, order_date) AS delivery_days
FROM Orders;


-- 7. Date difference with filtering
SELECT
    order_id,
    order_date,
    delivery_date,
    DATEDIFF(delivery_date, order_date) AS delivery_days
FROM Orders
WHERE DATEDIFF(delivery_date, order_date) > 3;


-- 8. Group orders by year
SELECT
    YEAR(order_date) AS order_year,
    COUNT(*) AS total_orders
FROM Orders
GROUP BY YEAR(order_date);


-- 9. Group orders by year and month
SELECT
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    COUNT(*) AS total_orders,
    SUM(amount) AS total_revenue
FROM Orders
GROUP BY
    YEAR(order_date),
    MONTH(order_date);


-- 10. LeetCode 197 - Rising Temperature
SELECT
    t.id
FROM Weather t
JOIN Weather y
    ON DATEDIFF(t.recordDate, y.recordDate) = 1
WHERE t.temperature > y.temperature;