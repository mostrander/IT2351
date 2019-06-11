### Executive Summary


### Normalization
  Lab 3 Part 2 shows a table from a database that has not been normalized at all. In order to normalize the table to first form, the Student Name column must be separated into two new columns: First Name and Last Name. This will help with selecting data from the database later on, and the information can always be put together again through concatentation. In addition, the classes column should only contain one value per row in order for the table to be considered in the first normal form, and there cannot be any repeating columns.
  
  The second form for this table reduces the redundant rows from the table by separating out data that does not rely specifically on the primary key and placing the data into new tables. For example, the Address field is specific only to the Student information. Therefore, you can create a new table that creates a Student_ID primary key and include the following columns within the table: First Name, Last Name, and Address. Then, you can replace the information in the original table with the Student_ID column.
  
  For the third normal form I went a little overboard and divided the data up into several new tables and used foreign keys to link the tables together. I separated the data into the following tables: Student, Classes, Majors, Department, and Faculty. 

### Conclusion
