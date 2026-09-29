-- Task 2a
SELECT * FROM Customers;
-- check what are the available columns
INSERT INTO Customers (FirstName, LastName, Email, Phone)
VALUES ('Stacy', 'Yu', 'stacy.yu@task2.com', '91234567');
SELECT * FROM Customers;
-- Task 2b
SELECT CustomerID, FirstName, LastName, Email
FROM Customers
WHERE CustomerID = 5;
-- confirm current email used
UPDATE Customers
SET Email = 'yu.stacy@task2b.com'
WHERE CustomerID = 5;
-- execute the update
SELECT CustomerID, FirstName, LastName, Email
FROM Customers
WHERE CustomerID = 5;
-- confirm the row has been updated

-- Task 2c
SELECT * FROM Orders;
SELECT * FROM OrderDetails;
DELETE FROM Orders
WHERE OrderID = 11;
DELETE FROM OrderDetails
WHERE OrderID = 11;

