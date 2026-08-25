-- Day 8 - SQL Practice
-- SQLBolt Lessons 16, 17, 18
-- LeetCode SQL 50

-- Lesson 16: Creating Tables

CREATE TABLE Database
(
    Name TEXT PRIMARY KEY,
    Version FLOAT,
    Download_count INTEGER
);

-- Lesson 17: Altering Tables

ALTER TABLE Movies
ADD Aspect_ratio FLOAT;

ALTER TABLE Movies
  ADD Language TEXT DEFAULT English;

-- Lesson 18: Dropping Tables

DROP TABLE Movies;

DROP TABLE Boxoffice;

-- LeetCode 1251: Average Selling Price

# Write your MySQL query statement below
SELECT p.product_id,ROUND(COALESCE(SUM(p.price*u.units)/SUM(u.units),0),2) AS average_price 
FROM Prices as p
LEFT JOIN UnitsSold as u ON p.product_id=u.product_id 
AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id;