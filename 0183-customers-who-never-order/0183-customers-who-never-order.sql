# Write your MySQL query statement below
SELECT a.Name AS Customers
FROM Customers a
LEFT JOIN Orders b
ON a.Id = b.CustomerId
WHERE b.Id IS NULL;