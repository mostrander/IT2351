SELECT 
	IF(grouping(category_name), "ALL Categories", category_name) AS "Category",
    IF(grouping(product_name), "All Products", product_name) AS "Product Name",
    COUNT(quantity) AS "Quantity"
FROM categories 
	INNER JOIN products
		ON categories.category_id = products.category_id
    INNER JOIN order_items
		ON products.product_id = order_items.product_id
GROUP BY category_name, product_name WITH ROLLUP
;