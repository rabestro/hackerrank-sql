SELECT ROUND(SQRT(POWER(c - a, 2) + POWER(d - b, 2)), 4)
FROM (
    SELECT 
        MIN(lat_n) AS a, 
        MIN(long_w) AS b,
        MAX(lat_n) AS c, 
        MAX(long_w) AS d
    FROM station
);
