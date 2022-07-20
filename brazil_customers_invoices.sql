SELECT  FirstName, LastName, InvoiceId, InvoiceDate, BillingCountry
FROM Customer inner join Invoice
on Customer.CustomerId= Invoice.CustomerId
where Country = 'Brazil'
