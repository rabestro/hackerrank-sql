SELECT name || '(' || substr(occupation, 1, 1) || ')'
FROM occupations
ORDER BY 1;
SELECT 'There are a total of ' || count(name) || ' ' || lower(occupation) || 's.'
FROM occupations
GROUP BY occupation
ORDER BY count(name), occupation;