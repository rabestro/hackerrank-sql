SELECT salary * months AS earning, COUNT(employee_id) 
FROM employee
WHERE earning = (SELECT MAX(salary * months) FROM employee);
