drop procedure if exists insert_category;
DELIMITER //
-- specify that procedure will insert new information into a table with infomation passed by user.
Create procedure insert_category
	(
	 in category_id int,
     in category_name varchar(20)
     )
BEGIN
	INSERT INTO ostrander_guitar_shop.categories
-- need to code field names here in VALUE, THEN pass values when calling procedure.
    VALUE (category_id, category_name);
END//

CALL insert_category(5, 'Flute');
CALL insert_category(6, 'Flute');