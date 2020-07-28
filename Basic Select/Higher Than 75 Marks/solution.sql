select name
from students
where marks > 75
order by substr(name, -3), id;
