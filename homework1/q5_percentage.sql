-- List the decades and the percentage of titles which premiered in the corresponding decade.
WITH titles2 AS
(
  SELECT SUM(1) AS total
  FROM titles
)
SELECT CAST(premiered / 10 * 10 AS TEXT) || 's' AS decade,
ROUND(COUNT(1) / (titles2.total * 1.0) * 100, 4)
FROM titles, titles2
GROUP BY decade
HAVING premiered IS NOT NULL
;
