-- Creating a Database named mobile_data
CREATE DATABASE mobile_data;

-- Selecting the Database
USE mobile_data;

-- Displaying the Structure of the Table mob
DESCRIBE mob;

-- Displaying the Table Data
SELECT * FROM mob;

-- Queries related to the Dataset:-
-- 1. Check mobile features and price list.
SELECT phone_name, price FROM mob;

-- 2. Find out the price of the 5 most expensive phones.
SELECT phone_name, price FROM mob ORDER BY price DESC LIMIT 5;

-- 3. Find out the price of the 5 cheapest phones.
SELECT phone_name, price FROM mob ORDER BY price ASC LIMIT 5;

-- 4. List of top 5 Samsung phones with price and all features.
SELECT * FROM mob WHERE Brands = "Samsung" ORDER BY price DESC LIMIT 5;

-- 5. Top 5 High price android phones.
SELECT * FROM mob WHERE Operating_System_Type = "Android" ORDER BY price DESC LIMIT 5;

-- 6. Bottom 5 Low price android phones.
SELECT * FROM mob WHERE Operating_System_Type = "Android" ORDER BY price ASC LIMIT 5;

-- 7. Top 5 High price iOS phones.
SELECT * FROM mob WHERE Operating_System_Type = "iOS" ORDER BY price DESC LIMIT 5;

-- 8. Bottom 5 Low price iOS phones.
SELECT * FROM mob WHERE Operating_System_Type = "iOS" ORDER BY price ASC LIMIT 5;

-- 9. Write a Query to find 5G phones. Also, find Top 5 phones with 5G support.
SELECT * FROM mob WHERE 5G_Availability = "Yes"; -- list of 5G phones
SELECT * FROM mob WHERE 5G_Availability = "Yes" ORDER BY price DESC LIMIT 5; -- top 5 5G phones

-- 10. Find Total Price of all mobiles with brand name.
SELECT Brands, SUM(price) AS Total_Price FROM mob GROUP BY Brands;