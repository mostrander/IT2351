SELECT 
	email_address AS "Email",
    substring_index(email_address, '@', 1) AS "Username",
    substring_index(email_address, '@', -1) AS "Domain Name"
FROM administrators;