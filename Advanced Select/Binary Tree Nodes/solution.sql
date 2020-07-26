select n,
    case
        when p is null then 'Root'
        when c is null then 'Leaf'
        else 'Inner'
    end
from bst
left outer join (select distinct p as c from bst)
    on n = c
order by n;
