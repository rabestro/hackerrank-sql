select name
from Friends
join Packages ps
    on Friends.id = ps.id
join Packages pf
    on Friend_ID = pf.id
join Students st
    on Friends.id = st.id
where ps.Salary < pf.Salary
order by pf.Salary
