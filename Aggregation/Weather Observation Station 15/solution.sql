SELECT round(max(long_w), 4)
FROM station
WHERE lat_n = (
    SELECT max(lat_n)
    FROM station
    WHERE lat_n < 137.2345
);
