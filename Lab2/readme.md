### Executive Summary

Throughout this lab I will conduct several queries on my modified database to extract data and provide brief explanations of each query used to extract said data from the database.

### Explanation of Queries

The first query I conducted on the database was a simply query that extracted the number of orders and total amount of taxes for all of the orders from the Orders table (see Lab2Part1.png). The sum function was used to add the tax information for all of the orders, and two columns were created to display the information.


Query two required that I obtain the category_name, category_id, and list_price fields from the Products and Categories tables. Then, I needed to group the data by the category_name field and order them by number of products in each category via descending order. Additionally, the list_price column needed to only show the largest, or max, value item within each category. Therefore, I joined the two tables together so I could have access to the necessary information. From there I made the category_name field DISTINCT to limit redundency, used the Count() function to add the number of products per category via category_id field, and used the MAX() function to obtain the highest valued product within each category (see Lab2Part2.png). 


Similar to the previous query, query three required the Products and Order_Items tables to be joined so the product_name and item_price fields could both be accessed. I used the DISTINCT term to help reduce redundency in the product_name column and used the SUM() function to find the total amount of money for each sale of each respective product. Then, I grouped by product_name field (see Lab2Part3.png).


I found the fourth query more difficult to organize in a clean manner because initially I had null values appearing in the final query results due to improper grouping. I initially joined the Categories table with the Products and Order_Items tables, then I selected the category_name, product_name, and quantity fields for the query. I grouped the information by category_name and product_name fields, respectively, and used the rollup summary function to add summaries to the product_name and quantity fields. However, this caused the null values to appear. By working with this query I learned that the IF() function could be used in conjunction with the rollup summary function to provide summaries for both fields and erase the null values (see Lab2Part4.png)! 


Query 5 was another easy thing to do once I figured out how to correctly insert a subquery into the code. All I did was select the product_name and list_price fields from the Products table, ordered the data by list price in descending order, and only selected the rows that contained list prices above the average list price for all of the products (See Lab2Part5.png).


The sixth query required me to use different functions to convert the list_price field data from the Products table to other field types, and give each conversion column a new name for the results grid (See Lab2Part6.png).


Query seven was extremely easy because I only had to use the substring_index() function to select specific parts of an email address. I only needed the email_address field from the Administrators table to accomplice this task (See Lab2Part7.png).

### Conclusion

Overall, this lab was an interesting lesson in how coding queries can be tricky in some circumstances depending on what information is needed. For example, I initially had difficulty removing the null values from the fourth query and later discovered it was an issue with how I was combining the groups with the rollup summary function. Images, explanations, and source code has been provided for many of these queries in this folder. 
