--Table that shows the region for each sales rep along with their associated accounts
SELECT r.name AS region_name, s.name AS sales_rep_name, a.name AS account_name
FROM region AS r
INNER JOIN sales_reps AS s ON s.region_id = r.id
INNER JOIN accounts AS a ON a.sales_rep_id = s.id
ORDER BY a.name ASC;
