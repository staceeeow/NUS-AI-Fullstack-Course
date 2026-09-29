SELECT * FROM saleslt.customer;
SELECT CustomerID, CompanyName, 
	CONCAT(CustomerID, ': ', CompanyName) AS Companies
FROM saleslt.customer;
SELECT * FROM saleslt.salesorderheader;
SELECT SalesOrderNumber, RevisionNumber, OrderDate,
	CONCAT(SalesOrderNumber,' (',RevisionNumber,')') AS SalesOrder,
	DATE_FORMAT(OrderDate, '%Y.%m.%d') AS ANSI102FormatDate
FROM saleslt.salesorderheader;