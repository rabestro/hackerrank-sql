SELECT ceil(avg(salary) - avg(replace(salary, '0')))
FROM employees;
