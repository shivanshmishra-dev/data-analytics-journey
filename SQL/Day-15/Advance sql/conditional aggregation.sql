-- ============================================
-- DAY 15: ADVANCED AGGREGATION & CONDITIONAL AGGREGATION
-- ============================================

-- 1. Conditional Count using SUM(CASE WHEN)
SELECT
    customer_id,
    SUM(CASE
            WHEN status = 'completed' THEN 1
            ELSE 0
        END) AS completed_orders
FROM Orders
GROUP BY customer_id;


-- 2. Conditional Count using COUNT(CASE WHEN)
SELECT
    customer_id,
    COUNT(CASE
              WHEN status = 'cancelled' THEN 1
          END) AS cancelled_orders
FROM Orders
GROUP BY customer_id;


-- 3. Conditional SUM
SELECT
    customer_id,
    SUM(CASE
            WHEN status = 'completed' THEN amount
            ELSE 0
        END) AS completed_revenue
FROM Orders
GROUP BY customer_id;


-- 4. Multiple Conditional Aggregations
SELECT
    customer_id,
    COUNT(order_id) AS total_orders,
    COUNT(CASE WHEN status = 'completed' THEN 1 END) AS completed_orders,
    COUNT(CASE WHEN status = 'cancelled' THEN 1 END) AS cancelled_orders,
    SUM(CASE WHEN status = 'completed' THEN amount ELSE 0 END) AS completed_revenue
FROM Orders
GROUP BY customer_id;


-- 5. Conditional Aggregation with Percentage
SELECT
    customer_id,
    COUNT(order_id) AS total_orders,
    COUNT(CASE WHEN status = 'completed' THEN 1 END) AS completed_orders,
    COUNT(CASE WHEN status = 'completed' THEN 1 END) * 100.0
        / COUNT(order_id) AS completion_percentage
FROM Orders
GROUP BY customer_id;


-- 6. Conditional Aggregation with CTE
WITH customer_summary AS (
    SELECT
        customer_id,
        COUNT(order_id) AS total_orders,
        COUNT(CASE WHEN status = 'completed' THEN 1 END) AS completed_orders,
        COUNT(CASE WHEN status = 'cancelled' THEN 1 END) AS cancelled_orders,
        SUM(CASE WHEN status = 'completed' THEN amount ELSE 0 END) AS completed_revenue
    FROM Orders
    GROUP BY customer_id
)
SELECT
    customer_id,
    total_orders,
    completed_orders,
    cancelled_orders,
    completed_revenue
FROM customer_summary;


-- 7. LeetCode 1211 - Queries Quality and Percentage
SELECT
    query_name,
    ROUND(AVG(rating * 1.0 / position), 2) AS quality,
    ROUND(
        AVG(
            CASE
                WHEN rating < 3 THEN 1.0
                ELSE 0
            END
        ) * 100.0,
        2
    ) AS poor_query_percentage
FROM Queries
GROUP BY query_name;