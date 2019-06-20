-- Drops procedure named test in case it already exists
drop procedure if exists test;
-- Creates a procedure called test
-- Add delimiter to allow procedure to function, provides necessary permissions?
DELIMITER //
CREATE procedure test()
begin
	declare product_count INT;
    SELECT COUNT(product_id) 
		INTO product_count
    FROM ostrander_guitar_shop.products;
    IF product_count >= 7
		THEN SELECT "The number of products is greater than or equal to 7" AS MESSAGE;
	ELSE SELECT "The number of products is less than 7" AS MESSAGE;
-- End the IF statements
    END IF;
END//
-- Call the procedure to run it.
call test();