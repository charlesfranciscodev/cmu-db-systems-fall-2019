-- List the number of titles in every decade
SELECT CAST(premiered / 10 * 10 AS TEXT) || 's' AS decade, COUNT(1)
FROM titles
GROUP BY decade
HAVING premiered IS NOT NULL
ORDER BY COUNT(1) DESC
;
