select Submissions.hacker_id, name from Submissions
join Challenges
on Submissions.challenge_id = Challenges.challenge_id
join Hackers
on Submissions.hacker_id = Hackers.hacker_id
where score = (
    select score
    from Difficulty
    where difficult_level = Challenges.difficulty_level
)
group by Submissions.hacker_id
having count(Submissions.challenge_id) > 1
order by count(Submissions.challenge_id) desc, Submissions.hacker_id;