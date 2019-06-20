drop function if exists discount_price;
DELIMITER //
-- create function, input for function is item_id but renamed so compare in where clause during function below
create function discount_price 
	(item_id_param int(11) )
RETURNS int
deterministic
reads sql data
BEGIN
	DECLARE final_price decimal(9,2);
-- declare variable to hold result of equation, must equate item_id to the item_id_param created earlier
	SELECT 
    (item_price - discount_amount) INTO final_price
    FROM ostrander_guitar_shop.order_items
    where item_id = item_id_param;
    RETURN (final_price);
END//
delimiter ;
-- to use function, call it like other field names and pass the initial param used when it was created
SELECT item_id, discount_price(item_id) AS "Final Price"
FROM ostrander_guitar_shop.order_items
;