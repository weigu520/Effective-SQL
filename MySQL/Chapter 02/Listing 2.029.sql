-- While this CREATE FUNCTION statement does not depend on the existence of 
-- specific tables, it's meant to be used with the Sales Orders sample database,
-- so you should run SalesOrdersStructure.sql (and SalesOrdersData.sql)
-- in the Sample Databases folder before running this example. 

USE SalesOrdersSample;

-- Listing 2.29 Non-deterministic function

CREATE FUNCTION CalculateAge(Date_of_Birth date) 
RETURNS int
RETURN (DATEDIFF(CURRENT_DATE, Date_of_Birth) / 365);

-- Run the following if you do not wish to keep the function in the database.
-- DROP FUNCTION CalculateAge;