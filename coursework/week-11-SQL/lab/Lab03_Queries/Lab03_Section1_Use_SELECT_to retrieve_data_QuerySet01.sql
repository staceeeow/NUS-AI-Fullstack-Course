SELECT * FROM SalesLt.Product;
SELECT name, StandardCost, ListPrice 
FROM SalesLt.Product;
SELECT name AS ProductName, ListPrice - StandardCost AS Markup
FROM SalesLt.Product;
SELECT ProductNumber, Color, Size, CONCAT(Color, ',',Size) AS ProductDetails
FROM SalesLt.Product;

    