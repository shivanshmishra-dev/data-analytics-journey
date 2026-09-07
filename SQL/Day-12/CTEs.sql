-- DAY 12: COMMON TABLE EXPRESSIONS (CTEs)
-- Learning: CTEs / WITH clause
-- Practice: Basic CTE, CTE + GROUP BY + HAVING, CTE + JOIN


-- Practice 1: Employees with salary greater than average salary

WITH average_salary AS (
    SELECT AVG(salary) AS avg_salary
    FROM Employees
)
SELECT e.id, e.name, e.salary
FROM Employees e
CROSS JOIN average_salary a
WHERE e.salary > a.avg_salary;


-- Practice 2: Departments with average salary greater than 50000

WITH average_salary AS (
    SELECT department_id, AVG(salary) AS avg_salary
    FROM Employees
    GROUP BY department_id
    HAVING AVG(salary) > 50000
)
SELECT department_id, avg_salary
FROM average_salary;


-- Practice 3: Department name with average salary greater than 50000

WITH department_salary AS (
    SELECT department_id, AVG(salary) AS avg_salary
    FROM Employees
    GROUP BY department_id
    HAVING AVG(salary) > 50000
)
SELECT Departments.department_name,
       department_salary.avg_salary
FROM department_salary
JOIN Departments
    ON Departments.id = department_salary.department_id;


-- LeetCode 1280: Students and Examinations
-- Accepted Query:
WITH student_subject AS (
    SELECT s.student_id,
    s.student_name,
    sub.subject_name
    FROM Students AS s CROSS JOIN Subjects AS sub
)
SELECT 
ss.student_id,
ss.student_name,
ss.subject_name,
COUNT(e.subject_name) AS attended_exams
FROM student_subject ss 
LEFT JOIN Examinations e ON ss.student_id=e.student_id
AND ss.subject_name=e.subject_name
GROUP BY 
ss.student_id,
ss.student_name,
ss.subject_name
ORDER BY ss.student_id,ss.subject_name;