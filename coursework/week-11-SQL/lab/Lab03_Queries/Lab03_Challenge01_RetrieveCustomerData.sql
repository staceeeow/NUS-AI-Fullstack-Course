SELECT * FROM saleslt.customer;
SELECT title, firstname, middlename, lastname, suffix, 
	CONCAT_WS(' ', Title, FirstName, MiddleName, LastName, Suffix) AS CustomerName
    /* CONCAT_WS ("with separator") puts the first argument between each value and skips NULLs. 
    That matters because most customers have no MiddleName or Suffix, and some have no Title. 
    Plain CONCAT returns NULL for the whole row if any single argument is NULL, 
    so most of your CustomerName column would come back empty. 
    This is the MySQL NULL difference from the table in my first answer, 
    where SQL Server's CONCAT treats NULL as an empty string. */
FROM saleslt.customer;
SELECT SalesPerson, title, firstname, middlename, lastname, suffix, 
	CONCAT_WS(' ', Title, FirstName, MiddleName, LastName, Suffix) AS CustomerName,
    Phone
FROM saleslt.customer;
    
    
   
       
	
