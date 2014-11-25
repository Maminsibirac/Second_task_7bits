use OmSU;


SELECT s.first_name AS 'Name', g.name AS 'Group' 
FROM Student s INNER JOIN _Group g 
    ON s.group_iden = g.id 
WHERE s.is_head = true 
ORDER BY s.first_name;


SELECT first_name AS 'Name', last_name AS 'Surname'
FROM Student 
WHERE chair_id IS NULL
ORDER BY first_name ;


SELECT g.name AS 'Group', COUNT(s.id) AS 'Number', s2.first_name AS 'Name'
FROM _Group g
INNER JOIN Student s 
    ON g.id = s.group_iden
INNER JOIN Student s2 
    ON g.id = s2.group_iden
WHERE s2.is_head = true
GROUP BY g.name;


SELECT d.Name AS 'Department',SUM(NumberG) AS 'Number'
FROM(
	SELECT g.name,COUNT(s.id) AS NumberG, g.department_id AS ID_D FROM _Group g
	INNER JOIN Student s 
	    ON g.id = s.group_iden
	GROUP BY g.name
	) as lo
RIGHT JOIN Department d 
    ON d.id = ID_D
GROUP BY ID_D;


