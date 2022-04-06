USE ecommercewebsite;

# Excercise # 2

# Q-1 Print Distinct City from Table Customers and Print Count Distinct City from Table Customers.
SELECT City, COUNT(DISTINCT City) from Customers;

# Q-2 Write a SQL query to get the least number of quantities and the highest number of quantities bought by the user consider the OrderDetails Table.
SELECT OrderID, MAX(Quantity), MIN(Quantity)
FROM order_details
GROUP BY orderID;

# Q-3 Print the total and an average number of quantities ordered by users, consider the OrderDetails Table
SELECT OrderID, SUM(Quantity), AVG(Quantity)
FROM order_details
group by orderId;

# Q-4 Print name of the product which is present at the 5th position till the 15th position from Products table, use LIMIT keyword.
select ProductName
from products
limit 5, 10;

# Q-5 Write a SQL query for all the details of the supplier whose name consists of “A” at the second position from the Suppliers table.
SELECT * FROM suppliers
WHERE LOCATE('A', SupplierName, 2);

# Q-6 Print the details of the customer who doesn’t stay in the USA and Canada from the Customers table.
SELECT * FROM customers
where not country="USA" or country="Canada";

# Q-7 Print the details of all the orders which were placed between the year 2020 to 2021 also print the same in descending order from the OrderDetails table.
SELECT * FROM order_details
INNER JOIN orders ON 
order_details.OrderID = orders.OrderID
WHERE OrderDate BETWEEN '2020-01-01' AND '2021-12-31';

# Q-8 Write a query to show the distinct city and their count from the Customers table.
SELECT DISTINCT City, COUNT(City)
FROM Customers
GROUP BY City;

# Q-9 Write a query to fetch details of all employees excluding the employees with first names, “Sanjay” and “Sonia” from the Employees table.
SELECT * FROM employees
WHERE NOT FirstName="Sanjay" OR "Sonia";
# Q-10 Duplicate a table as similar to the Suppliers table and name it as SupplierDetail.
CREATE TABLE SupplierDetail
AS
SELECT * FROM Suppliers;

# Q-11 Delete customer details whose country is Venezuela and print the rest of the Customer tabl
DELETE FROM customers
WHERE Country = "Venezuela";


