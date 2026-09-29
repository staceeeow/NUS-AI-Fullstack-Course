SELECT * FROM saleslt.customer;
SELECT CONCAT_WS(' ', FirstName, MiddleName, LastName) AS CustomerName
FROM saleslt.customer;

/* Note： MySQL is in safe mode and MySQL Workbench blocks 
UPDATE and DELETE statements unless the WHERE clause can use an index on a key column.
e.g WHERE CustomerID = 8, WHERE CustomerID BETWEEN 1 AND 50 
for WHERE CustomerID % 7 = 1 The index stores the IDs, not their remainders. 
MySQL has to calculate % 7 for every row to know which ones match, hence blocked */
-- SET SQL_SAFE_UPDATES = 0;
-- UPDATE SalesLT.Customer
-- SET EmailAddress = NULL
-- WHERE CustomerID % 7 = 1;
-- SET SQL_SAFE_UPDATES = 1;
SELECT CustomerID, 
	COALESCE(EmailAddress, Phone) AS PrimaryContact
FROM saleslt.customer;
SELECT * FROM saleslt.salesorderheader;

-- UPDATE SalesLT.SalesOrderHeader
-- SET ShipDate = NULL
-- WHERE SalesOrderID > 71899;

SELECT SalesOrderID, 
	CASE WHEN ShipDate IS NULL THEN 'Awaiting Shipment'
	ELSE 'Shipped'
	END AS ShippingStatus
FROM saleslt.salesorderheader;