SELECT * FROM SalesLT.Customer;
SELECT * FROM SalesLT.SalesOrderHeader;
SELECT * FROM SalesLT.Address;
SELECT * FROM SalesLT.CustomerAddress;
SELECT
    oh.AccountNumber,
    oh.SalesOrderID,
    oh.TotalDue,
    CONCAT_WS(', ',a.AddressLine1,a.AddressLine2,a.City,a.PostalCode) AS Address
FROM SalesLT.Customer AS c
    JOIN SalesLT.SalesOrderHeader AS oh
		ON c.CustomerID = oh.CustomerID
			LEFT JOIN SalesLT.CustomerAddress AS ca
				ON c.CustomerID = ca.CustomerID AND ca.AddressType = 'Main Office'
					LEFT JOIN SalesLT.Address AS a
						ON ca.AddressID = a.AddressID
ORDER BY oh.AccountNumber;