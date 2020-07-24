SELECT hackers.hacker_id, name, SUM(max_score) AS total_score
FROM (
    SELECT hacker_id, challenge_id, MAX(score) AS max_score
    FROM submissions
    GROUP BY hacker_id, challenge_id
) challenges, hackers
WHERE challenges.hacker_id = hackers.hacker_id (+)
GROUP BY hackers.hacker_id, name
HAVING SUM(max_score) > 0
ORDER BY total_score DESC, hacker_id ASC;
