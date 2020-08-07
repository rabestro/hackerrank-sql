SELECT x, y
FROM functions
WHERE x = y
GROUP BY x, y
HAVING count(*) > 1
UNION ALL
SELECT DISTINCT a.x, a.y
FROM functions a
         JOIN functions b
              ON a.x = b.y AND a.y = b.x
WHERE a.x < a.y
ORDER BY x;

