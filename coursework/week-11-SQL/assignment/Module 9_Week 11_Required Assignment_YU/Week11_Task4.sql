SELECT * FROM Orders;
SELECT * FROM OrderDetails;
SELECT * FROM Products;
SELECT
	p.ProductName,
	od.Quantity AS QuantityOrdered,
	DATE_FORMAT(o.OrderDate, '%Y-%m-%d') AS OrderDate  -- date only
FROM Orders AS o
	JOIN OrderDetails AS od
		ON o.OrderID = od.OrderID
	JOIN Products AS p
		ON od.ProductID = p.ProductID
WHERE o.OrderDate >= '2024-06-01'
	AND o.OrderDate < '2024-07-01'
ORDER BY o.OrderDate, p.ProductName;