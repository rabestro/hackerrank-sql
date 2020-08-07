SELECT DISTINCT city
FROM station
WHERE regexp_like(city, '[aeiou]$', 'i');
