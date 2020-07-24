SELECT hacker_id, name, SUM(max_score)
FROM (
    SELECT hacker_id, name, challenge_id, max_score
    FROM hackers
    NATURAL JOIN (
        SELECT hacker_id, challenge_id, MAX(score) AS max_score
        FROM Submissions
        GROUP BY hacker_id, challenge_id
    ) 
) GROUP BY challenge_id ORDER BY 3;
