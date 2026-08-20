-- Day 5-SQL Aggregation Practice
--Leetcode 1075:Project Employees I
# Write your MySQL query statement below
SELECT project_id,
ROUND(AVG(experience_years),2)
AS average_years FROM Project 
JOIN Employee ON Project.employee_id=Employee.employee_id 
GROUP BY project_id;
--LeetCode 570: Managers with at least 5 direct reports
SELECT a.name FROM Employee a
JOIN Employee b ON a.id = b.managerId
GROUP BY b.managerId
HAVING COUNT(b.id) >= 5;