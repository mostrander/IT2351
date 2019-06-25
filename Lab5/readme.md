## Executive Summary


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


### A

### B

### C

### D


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

## Conclusion


