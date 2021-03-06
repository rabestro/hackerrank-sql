SELECT n,
       CASE
           WHEN p IS NULL THEN 'Root'
           WHEN c IS NULL THEN 'Leaf'
           ELSE 'Inner'
           END
FROM bst
         LEFT OUTER JOIN (SELECT DISTINCT p AS c FROM bst)
                         ON n = c
ORDER BY n;
