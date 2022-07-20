SELECT  C.FirstName, C.LastName, InvoiceId, C.Country, Total
FROM Customer C inner join Invoice on C.CustomerId= Invoice.CustomerId
inner join Employee E on C.SupportRepId = E.EmployeeId