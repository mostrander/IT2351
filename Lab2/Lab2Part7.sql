SELECT 
	category_name AS "Category",
    product_name AS "Product",
    SUM((item_price - discount_amount) * quantity) AS "Total Sales"
    
FROM ostrander_guitar_shop.categories 
	JOIN products
		ON categories.category_id = products.category_id
    JOIN order_items
		ON products.product_id = order_items.product_id
GROUP BY product_name
;