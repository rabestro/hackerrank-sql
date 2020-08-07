SELECT submissions.hacker_id, name
FROM submissions
         JOIN challenges
              ON submissions.challenge_id = challenges.challenge_id
         JOIN hackers
              ON submissions.hacker_id = hackers.hacker_id
WHERE score = (
    SELECT score
    FROM difficulty
    WHERE difficulty_level = challenges.difficulty_level
)
GROUP BY submissions.hacker_id, name
HAVING count(submissions.challenge_id) > 1
ORDER BY count(submissions.challenge_id) DESC, submissions.hacker_id;