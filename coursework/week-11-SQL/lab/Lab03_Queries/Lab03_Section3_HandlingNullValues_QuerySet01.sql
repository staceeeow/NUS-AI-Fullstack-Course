SELECT Name, Size 
FROM SalesLT.Product;
SELECT Name, 
	IFNULL(CAST(Size AS SIGNED), 0) AS NumericSize
FROM SalesLT.Product;