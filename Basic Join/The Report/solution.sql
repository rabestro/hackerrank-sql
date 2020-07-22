SELECT CASE WHEN grade > 7 THEN name ELSE NULL END, grade, marks 
FROM students
JOIN grades
ON marks BETWEEN min_mark AND max_mark
ORDER BY grade DESC, name;
