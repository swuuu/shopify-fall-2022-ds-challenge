-- Question 1:
SELECT COUNT(OrderID) FROM Orders WHERE ShipperID = 1;

-- Question 2:
SELECT EmployeeID FROM [Orders] GROUP BY EmployeeID ORDER BY COUNT(*) DESC;

-- Question 3:
SELECT Products.ProductName, Customers.Country, Count(Orders.OrderID) AS NumberOfOrders FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
RIGHT JOIN Order_details ON Orders.OrderID = Order_details.OrderID
RIGHT JOIN Products ON Order_details.ProductID = Products.ProductID
WHERE Country = 'Germany'
GROUP BY ProductName ORDER BY NumberOfOrders DESC