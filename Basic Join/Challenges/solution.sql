SELECT hacker_id, name, COUNT(challenge_id) AS challenges
FROM Hackers
NATURAL JOIN Challenges
GROUP BY hacker_id, name
ORDER BY challenges DESC, hacker_id;
