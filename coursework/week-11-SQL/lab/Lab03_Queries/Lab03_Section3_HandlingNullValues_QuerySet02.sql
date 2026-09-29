SELECT ProductNumber, 
	CONCAT(IFNULL(Color,''),',',IFNULL(Size,'')) AS ProductDetails
FROM SalesLT.Product;
SELECT Name, 
	NULLIF(Color,'Multi') AS SingleColor
FROM SalesLT.Product;