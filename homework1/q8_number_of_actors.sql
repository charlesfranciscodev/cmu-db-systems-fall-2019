-- List the number of actors / actresses who have appeared in any title with Mark Hamill (born in 1951).
SELECT COUNT(DISTINCT person_id)
FROM crew
WHERE title_id IN
(
  SELECT title_id
  FROM crew
  JOIN people
  ON crew.person_id = people.person_id
  WHERE people.name = 'Mark Hamill' AND people.born = '1951'
)
;
