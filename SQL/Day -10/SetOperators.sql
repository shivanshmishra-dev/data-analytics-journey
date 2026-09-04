-- DAY 10: SET OPERATIONS
-- SQLBolt: Intermediate - Set Operations
-- LeetCode: 1045 - Customers Who Bought All Products


-- Practice 1: UNION
-- Combine students from both tables and remove duplicates

SELECT *
FROM Students_A
UNION
SELECT *
FROM Students_B;


-- Practice 2: UNION ALL
-- Combine students from both tables including duplicates

SELECT *
FROM Students_A
UNION ALL
SELECT *
FROM Students_B;


-- Practice 3: INTERSECT
-- Find students enrolled in both courses

SELECT student_id
FROM Course_A
INTERSECT
SELECT student_id
FROM Course_B;


-- LeetCode 1045: Customers Who Bought All Products

-- Accepted Query:
SELECT customer_id FROM Customer
GROUP BY customer_id 
HAVING COUNT(DISTINCT product_key)=(SELECT COUNT(*) FROM Product);