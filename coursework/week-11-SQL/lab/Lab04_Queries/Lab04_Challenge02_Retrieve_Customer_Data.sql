SELECT * FROM SalesLT.Customer;
SELECT * FROM SalesLT.SalesOrderHeader;
SELECT * FROM SalesLT.Address;
SELECT * FROM SalesLT.CustomerAddress;
SELECT  
	c.CustomerID,
    oh.AccountNumber,
    ca.AddressID
FROM SalesLT.Customer AS c
	LEFT JOIN saleslt.customeraddress AS ca
        ON c.CustomerID = ca.CustomerID 
			LEFT JOIN saleslt.salesorderheader AS oh
				ON c.CustomerID = oh.CustomerID
	WHERE ca.AddressID IS NULL
    ORDER BY c.CustomerID;
SELECT
	c.CustomerID,
    oh.SalesOrderID,
    oh.AccountNumber,
    oh.PurchaseOrderNumber,
    oh.TaxAmt + oh.Freight AS TaxFreightAmt,
    oh.TotalDue,
    DATE_FORMAT(oh.OrderDate, '%Y-%m-%d') AS OrderDateTrimmed
FROM saleslt.Customer AS c
		JOIN saleslt.salesorderheader AS oh
			ON c.CustomerID = oh.CustomerID
WHERE oh.AccountNumber REGEXP '^10'
ORDER BY oh.OrderDate DESC



	
