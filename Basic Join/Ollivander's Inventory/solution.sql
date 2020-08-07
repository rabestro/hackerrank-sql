SELECT id, age, coins_needed, power
FROM wands
         JOIN wands_property
              ON wands_property.code = wands.code
WHERE is_evil = 0
  AND (age, coins_needed, power) IN (
    SELECT age, min(coins_needed) AS the_cheapest, power
    FROM wands
             JOIN wands_property
                  ON wands_property.code = wands.code
    WHERE is_evil = 0
    GROUP BY power, age
)
ORDER BY power DESC, age DESC;
