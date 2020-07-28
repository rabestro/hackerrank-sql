select id, age, coins_needed, power
from Wands
join Wands_Property
    on Wands_Property.code = Wands.code
where is_evil = 0 and (age, coins_needed, power) in (
    select age, min(coins_needed) as the_cheapest, power
    from Wands
    join Wands_Property
        on Wands_Property.code = Wands.code
    where is_evil = 0
    group by power, age
)
order by power desc, age desc;
