SELECT 
	list_price AS "List Price",
    FORMAT(list_price, 1) AS "Format",
    CONVERT(list_price, SIGNED INTEGER) AS "Integer Conversion",
    CAST(list_price AS SIGNED INTEGER) AS "Cast Conversion"
FROM ostrander_guitar_shop.products
;