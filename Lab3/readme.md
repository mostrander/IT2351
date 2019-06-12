### Executive Summary
  This lab assignment is focused on normalizing a database and creating views from a database. In the section below I provide a detailed description of how I normalized the database provided for this assignment (SEE Lab3Part2_OriginalTable.png), as well as an image depicting the database in the third form (SEE Lab3Part3_3rdForm_table.png). It should be noted that I used MySQL WorkBench within a virtual machine, thus the lines depicting the relationships between the database tables are not displayed. 
  
  The second portion of the lab is focused on creating EER models from an existing database, such as the database used in the first part of this lab, and exporting the script for the database. This information is depicted in the Lab3Part3_3rdForm_table.png and Lab3Part4.sql files.
  
  Finally, the last portion of this lab is dedicated to creating views from an existing database. 

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
