select earning, count(earning)
from (
    select salary * months as earning
    from employee
)
group by earning
having earning = (
    select max(salary * months)
    from employee
);
