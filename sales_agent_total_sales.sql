SELECT  E.FirstName, E.LastName, sum(total)
FROM Customer inner join Invoice on Customer.CustomerId= Invoice.CustomerId
inner join Employee E on Customer.SupportRepId = E.EmployeeId
group by E.FirstName, E.LastName