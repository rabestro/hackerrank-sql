select hacker_id, name, count_ch
from (
    select hacker_id, name, count(challenge_id) as count_ch
    from Hackers
    natural join Challenges
    group by hacker_id, name
)
where count_ch not in (
    select cnt
    from (
        select hacker_id, count(challenge_id) as cnt
        from Challenges
        group by hacker_id
    )
    where cnt < (
        select max(count(*))
        from Challenges
        group by hacker_id
    )
    group by cnt
    having count(hacker_id) > 1
)
order by count_ch desc, hacker_id;
