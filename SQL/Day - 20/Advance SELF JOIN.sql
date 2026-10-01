-- DAY 20: SELF JOIN
-- 1. BASIC SELF JOIN
-- Employee and Manager

SELECT
    e.employee_id,
    e.employee_name,
    m.employee_name AS manager_name
FROM Employees e
JOIN Employees m
    ON e.manager_id = m.employee_id;

-- 2. SELF JOIN WITH WHERE
-- Employees earning more than their manager

SELECT
    e.employee_name AS employee,
    e.salary AS employee_salary,
    m.employee_name AS manager,
    m.salary AS manager_salary
FROM Employees e
JOIN Employees m
    ON e.manager_id = m.employee_id
WHERE e.salary > m.salary;

-- 3. SELF JOIN WITH COMPARISON
-- Compare employees working in the same department

SELECT
    e1.employee_name AS employee_1,
    e2.employee_name AS employee_2,
    e1.department_id
FROM Employees e1
JOIN Employees e2
    ON e1.department_id = e2.department_id
WHERE e1.employee_id < e2.employee_id;

-- 4. SELF JOIN WITH DIFFERENT ALIASES
-- Find employees who joined before their manager

SELECT
    e.employee_name AS employee,
    e.join_date AS employee_join_date,
    m.employee_name AS manager,
    m.join_date AS manager_join_date
FROM Employees e
JOIN Employees m
    ON e.manager_id = m.employee_id
WHERE e.join_date < m.join_date;

-- 5. SELF JOIN + AGGREGATION
-- Count direct reports for each manager

SELECT
    m.employee_id,
    m.employee_name AS manager_name,
    COUNT(e.employee_id) AS direct_reports
FROM Employees m
LEFT JOIN Employees e
    ON e.manager_id = m.employee_id
GROUP BY
    m.employee_id,
    m.employee_name;

-- 6. SELF JOIN + AGGREGATION + HAVING
-- Managers with at least 2 direct reports

SELECT
    m.employee_id,
    m.employee_name AS manager_name,
    COUNT(e.employee_id) AS direct_reports
FROM Employees m
JOIN Employees e
    ON e.manager_id = m.employee_id
GROUP BY
    m.employee_id,
    m.employee_name
HAVING COUNT(e.employee_id) >= 2;

-- 7. SELF JOIN — HIERARCHICAL RELATIONSHIP
-- Employee → Manager

SELECT
    e.employee_name AS employee,
    m.employee_name AS manager
FROM Employees e
LEFT JOIN Employees m
    ON e.manager_id = m.employee_id;
