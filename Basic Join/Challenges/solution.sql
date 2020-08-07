SELECT hacker_id, name, count_ch
FROM (
         SELECT hacker_id, name, count(challenge_id) AS count_ch
         FROM hackers
                  NATURAL JOIN challenges
         GROUP BY hacker_id, name
     )
WHERE count_ch NOT IN (
    SELECT cnt
    FROM (
             SELECT hacker_id, count(challenge_id) AS cnt
             FROM challenges
             GROUP BY hacker_id
         )
    WHERE cnt < (
        SELECT max(count(*))
        FROM challenges
        GROUP BY hacker_id
    )
    GROUP BY cnt
    HAVING count(hacker_id) > 1
)
ORDER BY count_ch DESC, hacker_id;
