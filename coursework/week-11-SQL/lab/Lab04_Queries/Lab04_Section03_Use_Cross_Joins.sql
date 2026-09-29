SELECT * FROM Customer;
SELECT 
	p.Name AS ProductName,
	c.CompanyName,
	c.EmailAddress
FROM SalesLT.Product AS p
	CROSS JOIN SalesLT.Customer AS c; 
    /* CROSS JOIN pairs every row in the left table with every row in the right table 
    without matching condition and without filtering by doing a cartesian product (aka cartesian join)
    e.g. 3 rows in left table, and 3 rows in right table, so 3 x 2 = 6 rows */
    