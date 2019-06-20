drop procedure if exists test;
DELIMITER //
Create procedure test()
BEGIN
-- create error handler for dealing with problems
	DECLARE sql_error TINYINT Default False;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
		SET sql_error = true;
	START TRANSACTION;
-- Removes specific customer_id number from the addresses and customers tables.
		DELETE FROM ostrander_guitar_shop.addresses WHERE customer_id = 8;
        DELETE FROM ostrander_guitar_shop.customers WHERE customer_id = 8;
-- Determines if there was an error and returns appropriate message to inform user. END if statement.
	IF sql_error = FALSE THEN
		Commit;
        SELECT "The transaction was committed.";
	ELSE 
		rollback;
        SELECT "Could not complete the transaction.";
	END IF;
END//
CALL test;