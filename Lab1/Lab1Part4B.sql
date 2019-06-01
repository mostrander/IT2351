SELECT
	CONCAT(last_name, ", ", first_name) AS "Customer Name", 
    order_date, ship_amount,
    date_format(order_date, '%M/%D/%Y')
FROM customers INNER JOIN orders
ON customers.customer_id = orders.customer_id
;