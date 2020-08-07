SELECT earning, count(earning)
FROM (
         SELECT salary * months AS earning
         FROM employee
     )
GROUP BY earning
HAVING earning = (
    SELECT max(salary * months)
    FROM employee
);
