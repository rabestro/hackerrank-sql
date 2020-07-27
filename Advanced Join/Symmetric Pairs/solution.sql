select distinct a.x, a.y
from Functions a
join Functions b
    on a.x = b.y and a.y = b.x
where a.x <= a.y
order by a.x;
