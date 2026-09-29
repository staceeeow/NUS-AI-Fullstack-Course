SELECT * FROM Orders;
SELECT
	o.OrderID,
	o.OrderDate,
	o.TotalAmount
FROM Orders AS o
WHERE o.OrderDate >= '2024-01-01'
	AND o.OrderDate < '2024-02-01' -- don't use <= 01-31 as it means 01-31 00:00:00. use 02-01
	AND o.TotalAmount > 500          
ORDER BY o.OrderDate;