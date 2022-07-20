SELECT  E.FirstName, E.LastName, InvoiceId, InvoiceDate, BillingCountry
FROM Customer inner join Invoice on Customer.CustomerId= Invoice.CustomerId
inner join Employee E on Customer.SupportRepId = E.EmployeeId