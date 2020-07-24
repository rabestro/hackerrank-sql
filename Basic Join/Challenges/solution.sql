SELECT hacker_id, name, COUNT(challenge_id) 
FROM Hackers
NATURAL JOIN Challenges
GROUP BY hacker_id, name
HAVING COUNT(challenge_id) NOT IN (
    SELECT cnt FROM (
        SELECT hacker_id, COUNT(challenge_id) AS cnt
        FROM Challenges
        GROUP BY hacker_id) 
    GROUP BY cnt
    HAVING COUNT(cnt) > 1
    ORDER BY cnt DESC
    OFFSET 1)
ORDER BY challenges DESC, hacker_id;
