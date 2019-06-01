SELECT 
	CONCAT(last_name, ", ", first_name) AS "Customer Name",
    order_date AS "Order Date",
    product_name AS "Product",
    item_price AS "Price",
    discount_amount AS "Discount",
    quantity AS "Quantity"
FROM customers c
	INNER JOIN orders o
		ON c.customer_id = o.customer_id
	INNER JOIN order_items oi
		ON o.order_id = oi.order_id
	INNER JOIN products p
		ON oi.product_id = p.product_id
ORDER BY last_name, order_date, product_name
;