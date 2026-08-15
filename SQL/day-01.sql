-- Day 1 - SQL Practice
-- LeetCode SQL 50

-- Q1: Recyclable and Low Fat Products
SELECT product_id
FROM Products
WHERE low_fats = 'Y'
  AND recyclable = 'Y';


-- Q2: Find Customer Referee
SELECT name
FROM Customer
WHERE referee_id != 2
   OR referee_id IS NULL;