SELECT CONCAT(ProductID, ': ', Name) AS ProductName
FROM SalesLT.Product;
SELECT SellStartDate,
	DATE_FORMAT(SellStartDate, '%Y-%m-%d %H:%i:%s') AS ConvertedDate,
	DATE_FORMAT(SellStartDate, '%Y-%m-%dT%H:%i:%s') AS ISO8601FormatDate
FROM SalesLT.Product;