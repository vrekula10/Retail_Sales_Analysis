CREATE DATABASE retail_sales_db;
USE retail_sales_db;


CREATE TABLE sales_data (
    Row_ID INT,
    Order_ID VARCHAR(50),
    Order_Date DATE,
    Ship_Date DATE,
    Ship_Mode VARCHAR(50),
    Customer_ID VARCHAR(50),
    Customer_Name VARCHAR(100),
    Segment VARCHAR(50),
    City VARCHAR(100),
    State VARCHAR(100),
    Country VARCHAR(100),
    Postal_Code VARCHAR(20),
    Market VARCHAR(50),
    Region VARCHAR(50),
    Product_ID VARCHAR(50),
    Category VARCHAR(50),
    Sub_Category VARCHAR(50),
    Product_Name VARCHAR(255),
    Sales DECIMAL(10, 2),
    Quantity INT,
    Discount DECIMAL(5, 2),
    Profit DECIMAL(10, 2),
    Shipping_Cost DECIMAL(10, 2),
    Order_Priority VARCHAR(50)
);

--SHOW tables in retail_sales_db;

DESCRIBE sales_data;

--select *from sales_data;

--SELECT DATABASE();
--USE retail_sales_db;
--SHOW TABLES;
--SELECT COUNT(*) FROM sales_data;