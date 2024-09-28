-- Creating the Database cars
CREATE SCHEMA cars;

-- Selecting the Database cars 
USE cars;

-- Displaying the Structure of the Table car_details
DESCRIBE car_details;

-- READ DATA -- 
SELECT * FROM car_details;

-- Questions:-
-- 1. Total Cars? [to get a count of the Total Records] --
SELECT COUNT(*) AS Total_Cars FROM car_details;

-- 2. How many cars will be available in 2023? --
SELECT COUNT(*) AS Cars_in_2023 FROM car_details WHERE year = 2023;

-- 3. How many cars will be available in 2020, 2021, 2022? --
SELECT COUNT(*) AS Number_Of_Cars, year FROM car_details WHERE year IN (2020, 2021, 2022) GROUP BY year;

-- 4. Total of all cars by year? --
SELECT year, COUNT(*) AS Total_cars FROM car_details GROUP BY year;

-- 5. How many diesel cars will be there in 2020? --
SELECT COUNT(*) AS Number_Of_Diesel_Cars FROM car_details WHERE year = 2020 AND fuel = "Diesel";

-- 6. How many petrol cars will be there in 2020? --
SELECT COUNT(*) AS Number_Of_Petrol_Cars FROM car_details WHERE year = 2020 AND fuel = "Petrol";

-- 7. All the fuel cars(petrol, diesel, CNG) by year? --
SELECT year, COUNT(*) AS Number_Of_Petrol_Cars FROM car_details WHERE fuel = "Petrol" GROUP BY year;
SELECT year, COUNT(*) AS Number_Of_Diesel_Cars FROM car_details WHERE fuel = "Diesel" GROUP BY year;
SELECT year, COUNT(*) AS Number_Of_CNG_Cars FROM car_details WHERE fuel = "CNG" GROUP BY year;

-- 8. Which year had more than 100 cars? --
SELECT year, COUNT(*) FROM car_details GROUP BY year HAVING COUNT(*) > 100;

-- 9. Give a list of all car count details between 2015 and 2023. --
SELECT COUNT(*) FROM car_details WHERE year BETWEEN 2015 AND 2023;

-- 10. Give a list of all car details between 2015 and 2023. --
SELECT * FROM car_details WHERE year BETWEEN 2015 and 2023;