-- DAY 11: SQL REVISION + GROUPING
-- Revision: GROUP BY, COUNT, DISTINCT, HAVING
-- LeetCode SQL 50:
-- 2356 - Number of Unique Subjects Taught by Each Teacher
-- 596 - Classes More Than 5 Students

-- LeetCode 2356: Number of Unique Subjects Taught by Each Teacher
-- Accepted Query:

SELECT teacher_id,COUNT(DISTINCT subject_id) AS cnt 
FROM Teacher GROUP BY teacher_id;

-- LeetCode 596: Classes More Than 5 Students
-- Accepted Query:

SELECT class FROM Courses 
GROUP BY class HAVING COUNT(DISTINCT student) >= 5;

-- LeetCode 596: User activity for the last 30 days
-- Accepted Query:

SELECT activity_date AS day,COUNT(DISTINCT user_id) AS active_users FROM Activity
 WHERE activity_date BETWEEN '2019-06-28' AND '2019-07-27' 
 GROUP BY activity_date;