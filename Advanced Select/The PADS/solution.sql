select name || '(' || substr(occupation, 1, 1) || ')'
from occupations
order by 1;
select 'There are a total of ' || count(name)  || ' ' || lower(occupation) || 's.'
from occupations
group by occupation
order by count(name), occupation;