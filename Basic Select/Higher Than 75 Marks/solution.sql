SELECT name
FROM students
WHERE marks > 75
ORDER BY substr(name, -3), id;
