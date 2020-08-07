SELECT hacker_id, name, sum(max_score) AS total_score
FROM (
         SELECT hacker_id, challenge_id, max(score) AS max_score
         FROM submissions
         GROUP BY hacker_id, challenge_id
     ) challenges
         NATURAL JOIN hackers
GROUP BY hacker_id, name
HAVING sum(max_score) > 0
ORDER BY total_score DESC, hacker_id ASC;
