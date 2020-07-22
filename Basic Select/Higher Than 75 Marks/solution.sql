SELECT name 
FROM students
WHERE marks > 75
ORDER BY SUBSTR(name, -3), id;
