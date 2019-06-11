CREATE OR REPLACE VIEW customer_addresses AS
	SELECT customers.customer_id, customers.email_address AS "Email", 
		customers.last_name AS "Last_Name", customers.first_name AS "First_Name",
		addresses.line1 AS "bill_line1", addresses.line2 AS "bill_line2", addresses.city AS "bill_city", 
        addresses.state AS "bill_state", addresses.zip_code AS "bill_zip"
	FROM customers INNER JOIN addresses
		ON customers.customer_id = addresses.customer_id
    ;