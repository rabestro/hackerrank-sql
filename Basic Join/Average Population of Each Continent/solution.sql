select continent, floor(avg(city.population)) as "Average city populations"
from city
join country
    on city.countrycode = country.code
group by continent;
