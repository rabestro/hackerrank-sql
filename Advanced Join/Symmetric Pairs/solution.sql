select x, y
from Functions
where x = y
group by x, y
having count(*) > 1
union all
select distinct a.x, a.y
from Functions a
         join Functions b
              on a.x = b.y and a.y = b.x
where a.x < a.y
order by x;

