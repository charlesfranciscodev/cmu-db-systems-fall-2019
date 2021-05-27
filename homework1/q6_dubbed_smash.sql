-- List the top 10 dubbed titles with the number of dubs.
SELECT primary_title, COUNT(1)
FROM akas
JOIN titles
ON akas.title_id = titles.title_id
GROUP BY akas.title_id
ORDER BY COUNT(1) DESC
LIMIT 10;
