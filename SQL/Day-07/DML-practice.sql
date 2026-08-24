--Day 7 -DML Practice
--LESSON 13:INSERT
INSERT INTO Movies VALUES (4,"Toy story 4",2015,90);

INSERT INTO Boxoffice VALUES (4,340000000, 270000000);

--LESSON 14:UPDATE
UPDATE Movies SET Director="John Lasseter" WHERE id = 2;

UPDATE Movies SET Year =1999 WHERE id=3;

UPDATE Movies SET Title="Toy Story 3",
Director="Lee Unkrich" WHERE id=11;
--LESSON 15:DELETE
DELETE FROM Movies WHERE Year<2005;

DELETE FROM Movies WHERE director="Andrew Stanton";
--LeetCode 620:Not Boring Movies
SELECT * FROM Cinema 
WHERE id%2=1 AND description !='boring'
ORDER BY rating DESC;