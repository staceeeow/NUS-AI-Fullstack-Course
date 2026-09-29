/* Task: Track the status of a product's availability based on the dates 
recorded when it was first offered for sale or removed from sale. i.e.
find the first non-null date for product selling status */

SELECT Name, SellStartDate, SellEndDate,
       COALESCE(SellEndDate, SellStartDate) AS StatusLastUpdated,
       /* COALESCE checks SellEndDate first, if null = still on sale and thus will not 
       check SellStartDate, otherwise = off the shelves, but it will not give status, 
       it will only give a date when the status was last updated so the below CASE condition
       is required. */
       CASE WHEN SellEndDate IS NULL THEN 'On sale'
       /* CASE has 2 variants, simple CASE evaluates a single column or value, a searched CASE
       evaluates one or more expressions. For this scenario, CASE expression must determine
       if the SellEndDate column is NULL. You can also use "IS NOT NULL". Otherwise you can
       use SellEndDate = '01/01/2005' which will return as TRUE or FALSE. */
            ELSE 'Discontinued'
       END AS SalesStatus
       /* this is a searched CASE expression as it includes one or more WHEN...THEN 
       expressions while a ELSE expression close the loop if none of the WHEN expressions
       are matched. the END keyword then denotes the end of the CASE expression. */
FROM SalesLT.Product;
SELECT Name, 
	CASE Size
		WHEN 'S' THEN 'Small'
		WHEN 'M' THEN 'Medium'
		WHEN 'L' THEN 'Large'
		WHEN 'XL' THEN 'Extra-Large'
        ELSE IFNULL(Size, 'n/a')
	END AS ProductSize
FROM SalesLT.Product;