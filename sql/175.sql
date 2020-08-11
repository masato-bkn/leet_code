SELECT
  FirstName 
 ,LastName
 ,City
 ,State
FROM
  Person P 
    LEFT OUTER JOIN 
  Address A
    ON P.PersonId = A.PersonId;