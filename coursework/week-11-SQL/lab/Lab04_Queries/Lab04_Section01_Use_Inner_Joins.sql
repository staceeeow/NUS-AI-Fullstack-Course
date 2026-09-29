SELECT * FROM SalesLT.Product;
SELECT * FROM SalesLT.ProductCategory;
SELECT 
	SalesLT.Product.Name AS ProductName, 
	SalesLT.ProductCategory.Name AS Category    
FROM SalesLT.Product -- FROM clause: Specifies the product table as the left input.
	JOIN SalesLT.ProductCategory -- JOIN operation: Uses INNER JOIN with product category as the right table.
		/* Cartesian join: SQL Server initially combines all rows from both tables.
        Apply INNER JOIN conditions： (JOIN defaults to INNER JOIN)
		1. Matches product category ID in both tables using the ON clause.
        2. Filter and keeps only rows where IDs match, discarding non-matching rows.
        Returns filtered data as virtual table that is passed to the next step in the SELECT query.*/
		ON SalesLT.Product.ProductCategoryID = SalesLT.ProductCategory.ProductCategoryID; 
SELECT 
	p.Name AS ProductName, 
	c.Name AS Category    
FROM SalesLT.Product AS p
	JOIN SalesLT.ProductCategory AS c 
		ON p.ProductCategoryID = c.ProductCategoryID;
SELECT 
	oh.OrderDate, 
    oh.SalesOrderNumber, 
    p.Name AS ProductName, 
    od.OrderQty, 
    od.UnitPrice, 
    od.LineTotal
FROM SalesLT.SalesOrderHeader AS oh
     JOIN SalesLT.SalesOrderDetail AS od
		ON od.SalesOrderID = oh.SalesOrderID
	JOIN SalesLT.Product AS p
		ON od.ProductID = p.ProductID
			ORDER BY oh.OrderDate, oh.SalesOrderID, od.SalesOrderDetailID;