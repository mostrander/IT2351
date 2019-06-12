CREATE OR REPLACE VIEW customer_orders AS
	SELECT CONCAT(first_name, ' ', last_name) AS "Customer Name",
    state AS "State",
    order_date AS "Order Date",
    product_name AS "Item"
FROM customers 
	JOIN orders ON customers.customer_id = orders.customer_id
    JOIN addresses ON customers.customer_id = addresses.customer_id
    JOIN order_items ON orders.order_id = order_items.order_id
    JOIN products ON order_items.product_id = products.product_id

;
    