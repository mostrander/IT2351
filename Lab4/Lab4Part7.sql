drop trigger if exists products_before_update;
DELIMITER //
Create trigger products_before_update
	before update on ostrander_guitar_shop.products
    for each row
BEGIN
	DECLARE discount_percent_amount decimal(9,2) ;
-- creates variable to hold the discount price, where product_id field is changed
	SELECT discount_percent INTO discount_percent_amount 
    FROM ostrander_guitar_shop.products
    WHERE product_id = new.product_id;
-- issues error message if discount percent is not within allowed range
    IF (new.discount_percent_amount > 100.00) OR (new.discount_percent_amount < 0.00) THEN
		SIGNAL SQLSTATE 'HY000'
        SET message_text = "Discount percent must be between 0 - 100.";
	END IF;
END//
-- add additional delimiter to allow update statement, should activate trigger and not allow update to save.
delimiter ;
UPDATE ostrander_guitar_shop.products
SET discount_percent = 30
WHERE product_id = 1;
