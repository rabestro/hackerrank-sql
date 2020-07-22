SELECT continent, FLOOR(AVG(city.population)) AS "Average city populations"
FROM city
JOIN country
ON city.countrycode = country.code
GROUP BY continent;
