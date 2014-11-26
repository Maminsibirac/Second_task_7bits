use OmSU;


SELECT s.first_name AS 'Name', g.name AS 'Group' 
FROM Student s
INNER JOIN `Group` g 
    ON s.group_iden = g.id 
WHERE s.is_head = true 
ORDER BY s.first_name;


SELECT first_name AS 'Name', last_name AS 'Surname'
FROM Student 
WHERE chair_id IS NULL
ORDER BY first_name ;


SELECT g.name AS 'Group', COUNT(s.id) AS 'Number', s2.first_name AS 'Name'
FROM `Group` g
INNER JOIN Student s 
    ON g.id = s.group_iden
INNER JOIN Student s2 
    ON g.id = s2.group_iden
WHERE s2.is_head = true
GROUP BY g.name;


SELECT d.Name AS 'Department',SUM(NumberG) AS 'Number'
FROM(
	SELECT g.name,COUNT(s.id) AS NumberG, g.department_id AS ID_D 
	FROM `Group` g
	INNER JOIN Student s 
	    ON g.id = s.group_iden
	GROUP BY g.name
    ) AS result
RIGHT JOIN Department d 
    ON d.id = ID_D
GROUP BY ID_D;


SELECT Department,Number,Name FROM(
	SELECT s.group_iden as ID, 1 as k,d.name as Department,COUNT(s.id) AS Number,d.boss as Name FROM Department d
	LEFT JOIN `Group` g ON d.id = g.department_id
	LEFT JOIN Student s ON g.id = s.group_iden
	 GROUP BY d.name
	UNION
	SELECT g.id as ID,2 as k,g.name as Department,COUNT(s.id) AS Number,s2.last_name as Name FROM `Group` g
	INNER JOIN Student s ON g.id = s.group_iden
	INNER JOIN Student s2 ON g.id = s2.group_iden
	WHERE s2.is_head = true
	 GROUP BY g.name
	ORDER BY ID ,k
) result
