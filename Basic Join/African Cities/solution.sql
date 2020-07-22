SELECT city.name
FROM city
JOIN country
ON city.countrycode = country.code
WHERE continent = 'Africa';
