-- List all types of titles along with the number of associated titles.
SELECT type, COUNT(1)
FROM titles
GROUP BY type
ORDER BY COUNT(1) DESC;
