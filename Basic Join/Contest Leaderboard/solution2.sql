select hackers.hacker_id, name, sum(max_score) as total_score
from (
    select hacker_id, challenge_id, max(score) as max_score
    from submissions
    group by hacker_id, challenge_id
) challenges
left join hackers
on hackers.hacker_id = challenges.hacker_id
group by hackers.hacker_id, hackers.name
having sum(max_score) > 0
order by total_score desc, hacker_id asc;
