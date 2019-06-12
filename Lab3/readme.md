### Executive Summary
  This lab assignment is focused on normalizing a database and creating views from a database. In the section below I provide a detailed description of how I normalized the database provided for this assignment (SEE Lab3Part2_OriginalTable.png), as well as an image depicting the database in the third form (SEE Lab3Part3_3rdForm_table.png). It should be noted that I used MySQL WorkBench within a virtual machine, thus the lines depicting the relationships between the database tables are not displayed. 
  
  The second portion of the lab is focused on creating Enhanced Entity-Relationship (EER) models from an existing database, such as the database used in the first part of this lab, and exporting the script for the database. This information is depicted in the Lab3Part3_3rdForm_table.png and Lab3Part4.sql files.
  
  Finally, the last portion of this lab is dedicated to creating views from an existing database. The two views created for this lab are shown in Lab3Part6.png and Lab3Part7.png. The SQL files are provided for both of the database views.

### Normalization
  Lab 3 Part 2 shows a table from a database that has not been normalized at all. In order to normalize the table to first form, the Student Name column must be separated into two new columns: First Name and Last Name. This will help with selecting data from the database later on, and the information can always be put together again through concatentation. In addition, the classes column should only contain one value per row in order for the table to be considered in the first normal form, and there cannot be any repeating columns.
  
  The second form for this table reduces the redundant rows from the table by separating out data that does not rely specifically on the primary key and placing the data into new tables. For example, the Address field is specific only to the Student information. Therefore, you can create a new table that creates a Student_ID primary key and include the following columns within the table: First Name, Last Name, and Address. Then, you can replace the information in the original table with the Student_ID column.
  
  For the third normal form I went a little overboard and divided the data up into several new tables and used foreign keys to link the tables together. I separated the data into the following tables: Student, Classes, Majors, Department, and Faculty. Below is the specific information concerning the data included in each table and how they relate to each other.
  
  The Student table consists of the Student_ID primary key, Student_First_Name, Student_Last_Name, Student_Address, and Student_Major_ID foreign key. The Student_Major_ID foreign key references the Major_ID from the Majors table.
  
  The Majors table consists of the Major_ID primary key, Major_Name, and the Major_Department_ID foreign key. The Major_Department_ID foreign key links the Majors table with the Department table through the Department_ID primary key.
  
  The Department table only consists of the Department_ID primary key and the Department_Name. There is no foreign keys on this table.
  
  The Classes table consists of the following columns: Class_ID primary key, Class_Number, Class_Name, Class_Faculty_ID foreign key, and Class_Department_ID foreign key. The Class_Faculty_ID links the Classes table to the Faculty table through the Faculty_ID primary key, and the Class_Department_ID foreign key links the Classes table to the Department table through the Department_ID primary key.
  
  Finally, the Faculty table includes a Faculty_ID primary key, a Emp_First_Name column, Emp_Last_Name column, Emp_Address column, and an Emp_Department_ID foreign key that links the table to the Department table through the Department_ID primary key.

### Conclusion

  Throughout this lab assignment I have provided images and source code for my completed work. In the first part of this lab I was asked to create an Enhanced Entity-Relationship (EER) model for my modified database that I used in previous lab assignments (SEE Lab3Part1.1.png and Lab3Part1.2.png). The two images I provided are the different segments of the same EER database model.
  
  I created another EER model in part 3 based on the data I normalized in part two of the lab (SEE Lab3Part2_OriginalTable.png). The explanation for how I normalized the data is provided above, and the Lab3Part3_3rdForm_table.png displays the final result. Afterward, I exported the script that contained the database I used in the previous two parts of this lab. In this case, I exported the script that I created while normalizing the data from part two (SEE Lab3Part4.sql).
  
  Finally, I created two different views for my guitar database shows different sets of customer data. The view created for part six selects the customer_id, email_address, first_name, and last_name fields from the customers table and joins this data with the billing address data located in the addresses table (SEE Lab3Part6.png and Lab3Part6.sql). Retrospectively, I should have named the view "customer_billingAddresses" or "customer_billing_address" instead of "customer_addresses". This would have been a better description of the table without actually viewing its contents. 
  
  Similarly, the view created in part seven combines the customer name, customer state, order date and items ordered data into a single table. However, I found this view a little more difficult because the information was separated by multiple tables, some of which were not directly connected. For example, the customer name field was created by combining the first_name and last_name fields from the customers table, and the state field was extracted from the addresses table. The order_date field was obtained from the orders table by joining the table with the customers table via the customer_id field. Items ordered, however, could not be easily obtained because it did not have a direct connection to either customers or order_date tables. Therefore, I had to join the order_items table to the orders table by using the order_id field. I could have used the product_id from the order_items table to display the items ordered data in the view, but I felt this did not provide any valuable information for the purposes of this view. Thus, I added the products table to the view by joining it to the order_items table via the product_id field. This allowed me access to the product name field that I used to display the items ordered data (SEE Lab3Part7.png and Lab3Part7.sql).
