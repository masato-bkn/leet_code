SELECT
  Name AS Customers
FROM
  Customers
WHERE
  Id NOT IN (SELECT CustomerId FROM Orders);


SELECT
  Name AS Customers
FROM
  Customers C
LEFT OUTER JOIN Orders O
ON C.Id = O.CustomerId
WHERE
  O.CustomerId IS NULL;