CREATE DATABASE superstore_db;
USE superstore_db;
CREATE TABLE Superstore (
    Order_ID INT,
    Order_Date DATE,
    Ship_Date DATE,
    Region VARCHAR(20),
    Category VARCHAR(50),
    Sub_Category VARCHAR(50),
    Sales DECIMAL(10,2),
    Quantity INT,
    Discount DECIMAL(4,2),
    Profit DECIMAL(10,2),
    Ship_Mode VARCHAR(50),
    Customer_ID VARCHAR(20),
    Product_ID VARCHAR(20)
);
select * from superstore

select SUM(Sales) AS Total_Sales FROM Superstore;
SELECT Region, SUM(Sales) AS Sales_By_Region 
FROM Superstore 
GROUP BY Region;
SELECT Sub_Category, SUM(Profit) AS Total_Profit 
FROM Superstore 
GROUP BY Sub_Category 
ORDER BY Total_Profit DESC 
LIMIT 5;

SELECT Order_ID, DATEDIFF(Ship_Date, Order_Date) AS Shipping_Days
FROM Superstore
ORDER BY Shipping_Days DESC;




