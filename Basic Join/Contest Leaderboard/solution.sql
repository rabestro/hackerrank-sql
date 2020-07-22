SELECT results.hacker_id, name, SUM(challenge_score) AS total_score
FROM (
    SELECT hacker_id, challenge_id, MAX(score) AS challenge_score 
    FROM submissions
    GROUP BY challenge_id) results
NATURAL JOIN hackers
GROUP BY results.hacker_id
HAVING total_score > 0
ORDER BY total_score DESC, hacker_id;
