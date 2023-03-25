-- List the longest title of each type along with the runtime minutes.
-- There might be cases where there is a tie for the longest titles - in that case return all of them.
SELECT titles.type, primary_title, titles.runtime_minutes
FROM titles
JOIN
(
  SELECT type, MAX(runtime_minutes) AS runtime_minutes
  FROM titles
  GROUP BY type
) titles2
ON titles.type = titles2.type AND titles.runtime_minutes = titles2.runtime_minutes
ORDER BY titles.type ASC, primary_title ASC
;
