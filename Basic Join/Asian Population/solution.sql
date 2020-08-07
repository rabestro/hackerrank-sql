SELECT sum(city.population)
FROM city
         JOIN country
              ON city.countrycode = country.code
WHERE continent = 'Asia';
