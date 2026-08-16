--QUERY 1 
SELECT name FROM empolyees
WHERE city = "Delhi";
--QUERY 2
SELECT name FROM empolyess
WHERE salary > 50000;
--QUERY 3
SELECT name FROM empolyess
WHERE city = 'Delhi' OR city = 'Mumbai';
--QUERY 4
SELECT name FROM  empolyess
WHERE salary BETWEEN 40000 AND 70000;
--QUERY 5
SELECT name FROM empolyess
WHERE department="IT" OR department="HR";
--QUERY 6
SELECT name FROM empolyess
ORDER BY name ASC;
--QUERY 7
SELECT salary FROM empolyess
ORDER BY salary DESC;
--QUERY 8
SELECT salary FROM empolyess
ORDER  BY salary DESC LIMIT 3;
