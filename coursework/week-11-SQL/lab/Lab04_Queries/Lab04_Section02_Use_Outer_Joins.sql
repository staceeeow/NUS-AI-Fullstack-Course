SELECT * FROM SalesLT.Customer;
SELECT 
	c.CompanyName, 
    c.SalesPerson, 
    oh.SalesOrderNumber
FROM SalesLT.Customer AS c
	LEFT OUTER JOIN SalesLT.SalesOrderHeader AS oh
		ON c.CustomerID = oh.CustomerID
			ORDER BY c.CustomerID;
SELECT 
	p.Name As ProductName,
    c.Name AS Category,
	oh.SalesOrderNumber
FROM SalesLT.Product AS p
	LEFT JOIN SalesLT.ProductCategory AS c
		ON p.ProductCategoryID = c.ProductCategoryID
	LEFT JOIN SalesLT.SalesOrderDetail AS od
		ON p.ProductID = od.ProductID
	LEFT JOIN SalesLT.SalesOrderHeader AS oh
		ON od.SalesOrderID = oh.SalesOrderID
			ORDER BY p.ProductID;