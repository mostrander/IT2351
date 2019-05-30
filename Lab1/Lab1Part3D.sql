SELECT concat(last_name, ', ', first_name) AS "Full Name",
	email_address AS "Email"
FROM customers
WHERE last_name > 'H' AND last_name < 'W'
ORDER BY last_name asc;