## Executive Summary

  This lab is focused on explaining additional concepts SQL users and administrators should be aware of, such as: Database Administrator responsibilities, log files, database variables, privileges, roles, and how to backup a database. I provide a description of each topic below.

## Database Administrator Responsibilities 

  The primary responsibilities of a Database Administrator is to create, maintain, and protect a database for the organization that employed the individual. This normally entails designing a database from scratch or modifying an existing database by organizing the data into smaller, managable tables of information that are then linked together by primary and foreign keys. A well organized database can help prevent duplicate data in the system. 
  
  Administrators are also resposible for securing the database from internal and external threats, such as power outages or viruses. This may be accomplished by creating backups of the database on a regular interval. Additionally, Database Administrators are able to give users specific permissions that influence what they are able to do with the data in the system (i.e. create new tables).
  
  Finally, the Database Administrator must maintain the database so it remains organized and free of duplicate information. The administrator can use a variety of logs to determine how to alter the database to improve functionality and performance, as well as address errors. Logs are discussed in the following section.

## Log Files

  There are four types of log files that provide additional information for the Database Administrator concerning the performance, alterations, and errors within the database during a duration of time, such as within the last month. While these logs contain extremely useful information, they often contain sensitive information and consume additional storage space. For these two reasons it is usually best to only enable the logs that are necessary.
  
  **Error logs** contain all of the information pertaining to problems that occur in the database, as well as information concerning the startup and shutdown of the database system. This log is usually active because it can be used to correct problems as soon as possible. 
  
  Similarly, **slow query** logs are usually used to solve database problems. In this case, the slow query log contains information about SQL queries that are performing slowly. Therefore, the Database Administrator can use the information in this log to improve the performance of the database so the queries are executed more efficiently and faster.
  
  **Binary logs** are another type of database log that is typically activated for a database because they contain important information concerning the changes made to the database since its last backup, and can be used to create backups of the database in case of power outages or system failure. 
  
  Finally, **relay logs** are comprised of one or more binary logs that are used to pass any changes made on the "slave machine" to the "master machine". In other words, the database is replicated onto a secondary system where any changes made are then transferred over to the original database on the primary machine. However, this log is only needed if the administrator is using replication. 
  
  A general log containing client connections, SQL statements, and additional information also exists.

## Variables

  There are two types of variables that exist for a database: status and system variables.
  
  **Status variables** contan information about the status of the database, such as the connections variable that informs the administrator of how many connection attempts were made for the database. Similarly, **system variables** provide information about the database system itself, such as how it is currently configured. For example, the binlog_format variable describes how the binary logs for the database are formatted.

## Privileges


### A: Explain the following code (copy and paste the code into your readme.md file and comment all sections): 
    // Create two users for the database, establish a password for each user
    CREATE USER guitar_admin@localhost IDENTIFIED BY 'pa55word';
    CREATE USER guitar_user@localhost IDENTIFIED BY 'pa55word'; 
    
    // Give all privileges to admin user for all guitar database tables.
    GRANT ALL 
    ON guitar.* 
    TO guitar_admin@localhost; 

    // Gives the select, insert, update, and delete permissions to user for all tables in the guitar database.
    GRANT SELECT, INSERT, UPDATE, DELETE 
    ON guitar.* 
    TO guitar_user@localhost;
    
 The code above is used to establish two users for a database and grant permissions to each user for all of the tables in the guitar database. Each user is indentified by a password that they would use to login to the database. 

### B: What are the privilege levels that can be granted to a user?

 There are four levels of privileges that are used to grant users permissions for a database. Global level grants permissions for all databases and tables. The database level grants permissions to all tables within a specific table. The table level grants permission to all the columns is a specific table, and the column level only grants permission to a single column. 

### C: How would this code change to grant column privileges to the customer first_name, last_name and email_address? 

     GRANT SELECT, INSERT, UPDATE (first_name, last_name, email_address)
     ON guitar.customers
     TO guitar_user@localhost;

### D: Why would you want to do this?

  The Database Administrator may want to restrict what information a user or group of users could modify by limiting what fields they could change. This can help limit user errors to an extend.


## Roles

### A: Create a role to provide update privileges to the categories table (either here in discussion format or in MySQL Workbench)
    
    CREATE ROLE standardUser;
    
    GRANT UPDATE
    ON [database name].categories 
    TO standardUser;
    
    Note: Replace [database name] with the actual name of the database being used for this SQL statement.
  
### B: Grant privileges to the role and, assign users to the role (either here in discussion format or in MySQL Workbench)
    
    GRANT SELECT, INSERT, UPDATE
    ON [database name].categories 
    TO standardUser;
    
    GRANT standardUser TO LILY, MIKE;
    
  
### C: Explain why roles would be useful.
    
   For larger organizations it is easier to create roles and assign individuals to those roles. Then, the privileges can be assigned to each role. If necessary, the Database Administrator can alter the privileges of the role or remove individuals from a role, thus simplifying the process of granting permissions to users overall. It would also be easier to maintain in the long-term.
    

## Backing Up a Database

  ### A: What is a backup and restore strategy and why are they important? 
  
   **Backup strategies** are the methods used to create and save a copy of the database in its current state for future use should the system fail for any reason. These strategies include full backups and incremental backups. A full backup is a complete copy of the database, while an incremental backup only contains te updates and alterations made to the database since the previous full backup.
   
   A **restore strategy** refers to how the database is restored once a failure has occurred. Typically, this strategy involves using the previous full backup to restore the database and then use the incremental backups to restore the alterations made to the database since the last full backup prior to system failure. 
   
   It is extremely important to create backups for a database because it only takes on incident to completely wipe a database of all the information. For example, a harddrive can fail for a vriety of reasons, including hardware overheating and damage caused by a virus. Without a backup of the database, the organization would permanently lose all of the information, and subsequently risk losing millions of dollars or even bankruptcy! Thus, all Database Administrators should prioritize the creation of database bacups and store them on a safe harddrive separate from the one tht contains the active database.
  
  ### B: What is the difference between a full and incremental backup?
  
   As discussed above, a full backup contains all of the information for the database and can be used to restore the database should system failure occur. Incremental backups, on the other hand, contain the information pertaining to the updates and alterations made to the database since the previous full backup.

## Conclusion

  I have provided a lengthy description of each topic discussed in this lab. I explained that Database Administrators are responsible for creating, maintaining, and protecting a database for an organization through a variety of methods, including restricting user activity via roles and permissions, as well as creating backups for the database. It is important to maintain backups of the database because there are several possible causes of system failure. Incremental backups can be used to restore updates to the database since the last full backup. There are several different levels of privileges that can be used to grant different permissions to users, as well as the ability to create roles that users can be assigned to simplify managing privileges.
