SELECT round(sqrt(power(c - a, 2) + power(d - b, 2)), 4)
FROM (
         SELECT min(lat_n)  AS a,
                min(long_w) AS b,
                max(lat_n)  AS c,
                max(long_w) AS d
         FROM station
     );
