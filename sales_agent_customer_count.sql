SELECT  E.FirstName, E.LastName, count(C.customerid)
FROM Employee E inner join  Customer C on 
C.SupportRepId = E.EmployeeId
group by  E.FirstName, E.LastName