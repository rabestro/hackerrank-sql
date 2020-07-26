select hacker_id, name, sum(max_score) as total_score
from (
    select hacker_id, challenge_id, max(score) as max_score
    from submissions
    group by hacker_id, challenge_id
) challenges
natural join hackers
group by hacker_id, name
having sum(max_score) > 0
order by total_score desc, hacker_id asc;
