-- Day 6 - SQL CASE Practice

-- Example
SELECT name,
       CASE
           WHEN salary >= 50000 THEN 'High'
           ELSE 'Low'
       END AS salary_category
FROM employees;
--LeetCode 1661-Average Time OF process per machine
SELECT a.machine_id,ROUND(AVG(ac.timestamp-a.timestamp),3) AS processing_time FROM Activity AS a
JOIN Activity as ac ON a.machine_id=ac.machine_id 
AND a.process_id=ac.process_id AND a.timestamp="start" AND ac.timestamp="end"
GROUP BY a.machine_id;