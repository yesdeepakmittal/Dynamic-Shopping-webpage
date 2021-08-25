# Shopping_website

* Create a `test` database in `MySQL`
* Create two tables in `test` database
```sql
CREATE DATABASE test;
CREATE TABLE Product(Product_ID VARCHAR(10),Product_Name VARCHAR(50), Quantity int, Price int, Discount int);
CREATE TABLE User(fname VARCHAR(50), lname VARCHAR(50), mnum VARCHAR(10) LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]',address VARCHAR(250));
```
* INSERT Products in Product table
* User table gets updated when new record is entered in to the form.
