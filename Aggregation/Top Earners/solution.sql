SELECT earning, COUNT(earning) 
FROM (SELECT salary * months AS earning FROM employee)
GROUP BY earning
HAVING earning = (SELECT MAX(salary * months) FROM employee);
