### Executive Summary

  This lab is focused on creating scripts that call functions, procedures, and triggers to retrieve or modify data in the database. 
  
  In part 2, I created a procedure that counted the number of records stored in the products table. The procedure then uses the count variable to determine which of two messages to display based on the number stored in the variable. 
  
  Part 4a shows another procedure I created that uses a transaction to remove information pertaining to a record with the customer_id of '8' from the addresses and customers tables, respectively. It also uses an error handler to catch general error messages and is used to determine whether the changes made by the transaction procedure should be committed or rolled back. 
  
  Unlike the previous exercise, part 5 instead inserts data into an existing table based on the existing fields already within the table. The procedure accepts values for the category_id and category_name fields, then it stores the values in the field when called if the values are compatible with the field requirements. 
  
  In exercise 6, I wrote a script for a function that calculates the final price of an item after discounts and then displays the final price beside the item_id number for each item in the order_items table. The function used the item_id field as input.
  
  Finally, exercise 7 was supposed to be a script for a trigger that prevents users from saving a record in the products table if the discount percentage is not between 0 - 100. However, I am still working on getting this script to work as intended. Thus, it is a work in progress!

### Conclusion

  Overall, this lab assignment proved to be more challenging than I had initially anticipated. I was able to work through the majority of the scripts on my own with only a few minor problems occassionally popping up that I had to fix. Exercise 7 provided the most difficulty because I am still struggling to code the script properly so the error message ONLY shows when the value is not within the 0 - 100 range. Currently, the error is displayed regardless of whatever value is entered. 
