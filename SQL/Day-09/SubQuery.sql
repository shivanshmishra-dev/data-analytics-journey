-- DAY 9: SUBQUERIES
-- SQLBolt: Intermediate - Subqueries
-- LeetCode: 619 - Biggest Single Number


-- Practice 1: Employees with salary greater than average salary
  
   SELECT salary FROM Employees
   WHERE salary >(SELECT AVG(salary)
   FROM Employees);

-- Practice 2: Employees from IT or HR departments
   
   SELECT *FROM Employees
   WHERE department_id IN (SELECT id FROM Department 
   WHERE department_name IN ('IT', 'HR'));

-- Practice 3: Product(s) with maximum price
   SELECT *FROM Products WHERE price=(SELECT MAX(price) FROM Products);


-- LeetCode 619: Biggest Single Number
   SELECT MAX(num) AS num FROM
   (SELECT num FROM MyNumbers GROUP BY num HAVING COUNT(num)=1)
   AS single_number;