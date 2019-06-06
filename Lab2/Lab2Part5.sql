SELECT 
	product_name AS "Product", 
	list_price AS "Price"
FROM ostrander_guitar_shop.products
WHERE list_price > 
	(SELECT AVG(list_price)
    FROM products)
ORDER BY list_price DESC
;