-- List the movies in alphabetical order which cast both Mark Hamill (born in 1951) and George Lucas (born in 1944).
WITH crew2 (title_id) AS (
  SELECT title_id
  FROM crew
  JOIN people
  ON crew.person_id = people.person_id
  WHERE people.name = 'Mark Hamill' AND people.born = '1951'
  INTERSECT
  SELECT title_id
  FROM crew
  JOIN people
  ON crew.person_id = people.person_id
  WHERE people.name = 'George Lucas' AND people.born = '1944'
)
SELECT primary_title
FROM crew2
JOIN titles
ON crew2.title_id = titles.title_id
ORDER BY primary_title;
