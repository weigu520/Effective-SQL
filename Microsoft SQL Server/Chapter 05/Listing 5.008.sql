-- Ensure you've run SalesOrdersStructure.sql
-- and SalesOrdersData.sql in the Sample Databases folder
-- in order to run this example. 

USE SalesOrdersSample;

SELECT Orders.ShipDate, SUM(Orders.OrderTotal) AS SumOfOrderTotal
FROM Orders
GROUP BY Orders.ShipDate
HAVING Orders.ShipDate >= '2016-09-01' 
   AND Orders.ShipDate < '2016-10-01';