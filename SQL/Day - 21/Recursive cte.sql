-- DAY 21: RECURSIVE CTEs

-- 1. BASIC RECURSIVE CTE
-- Generate numbers from 1 to 5

WITH RECURSIVE numbers AS (

    -- Anchor
    SELECT 1 AS n

    UNION ALL

    -- Recursive part
    SELECT n + 1
    FROM numbers
    WHERE n < 5

)
SELECT *
FROM numbers;

-- 2. RECURSIVE CTE WITH HIERARCHY
-- Employee -> Manager relationship

WITH RECURSIVE employee_hierarchy AS (

    -- Anchor: start with the top-level manager
    SELECT
        employee_id,
        employee_name,
        manager_id,
        1 AS level
    FROM Employees
    WHERE manager_id IS NULL

    UNION ALL

    -- Recursive part: find employees
    -- reporting to the previous level
    SELECT
        e.employee_id,
        e.employee_name,
        e.manager_id,
        eh.level + 1
    FROM Employees e
    JOIN employee_hierarchy eh
        ON e.manager_id = eh.employee_id

)
SELECT
    employee_id,
    employee_name,
    manager_id,
    level
FROM employee_hierarchy;

-- 3. RECURSIVE CTE WITH PATH
-- Track the hierarchy level

WITH RECURSIVE employee_hierarchy AS (

    -- Anchor
    SELECT
        employee_id,
        employee_name,
        manager_id,
        CAST(employee_name AS CHAR(500)) AS hierarchy_path,
        1 AS level
    FROM Employees
    WHERE manager_id IS NULL

    UNION ALL

    -- Recursive part
    SELECT
        e.employee_id,
        e.employee_name,
        e.manager_id,
        CONCAT(
            eh.hierarchy_path,
            ' -> ',
            e.employee_name
        ) AS hierarchy_path,
        eh.level + 1
    FROM Employees e
    JOIN employee_hierarchy eh
        ON e.manager_id = eh.employee_id

)
SELECT
    employee_id,
    employee_name,
    manager_id,
    level,
    hierarchy_path
FROM employee_hierarchy;

-- 4. RECURSIVE CTE WITH STOPPING CONDITION
-- Generate numbers from 1 to 10

WITH RECURSIVE numbers AS (

    -- Anchor
    SELECT 1 AS n

    UNION ALL

    -- Recursive part
    SELECT n + 1
    FROM numbers
    WHERE n < 10

)
SELECT *
FROM numbers;

-- 5. RECURSIVE CTE
-- Find all subordinates under a manager

WITH RECURSIVE subordinates AS (

    -- Anchor: direct reports
    SELECT
        employee_id,
        employee_name,
        manager_id
    FROM Employees
    WHERE manager_id = 1

    UNION ALL

    -- Recursive part: indirect reports
    SELECT
        e.employee_id,
        e.employee_name,
        e.manager_id
    FROM Employees e
    JOIN subordinates s
        ON e.manager_id = s.employee_id

)
SELECT
    employee_id,
    employee_name,
    manager_id
FROM subordinates;

-- 6. RECURSIVE CTE + COUNT
-- Count all subordinates under a manager

WITH RECURSIVE subordinates AS (

    -- Anchor
    SELECT
        employee_id,
        manager_id
    FROM Employees
    WHERE manager_id = 1

    UNION ALL

    -- Recursive part
    SELECT
        e.employee_id,
        e.manager_id
    FROM Employees e
    JOIN subordinates s
        ON e.manager_id = s.employee_id

)
SELECT
    COUNT(*) AS total_subordinates
FROM subordinates;

-- KEY CONCEPT
--
-- Recursive CTE has two main parts:
--
-- 1. Anchor query
--    Starting point
--
-- 2. Recursive query
--    Finds the next level
--
-- They are combined using UNION ALL.
--
-- The WHERE condition controls when recursion stops.