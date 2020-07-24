SELECT hacker_id, name, count_ch 
FROM (
    SELECT hacker_id, name, COUNT(challenge_id) AS count_ch 
    FROM Hackers
    NATURAL JOIN Challenges
    GROUP BY hacker_id, name 
)  
WHERE count_ch NOT IN (
    SELECT cnt 
    FROM (
        SELECT hacker_id, COUNT(challenge_id) AS cnt
        FROM Challenges
        GROUP BY hacker_id) 
    WHERE cnt < (SELECT MAX(COUNT(*)) FROM Challenges GROUP BY hacker_id)
    GROUP BY cnt
    HAVING COUNT(hacker_id) > 1 
)
ORDER BY count_ch DESC, hacker_id;
