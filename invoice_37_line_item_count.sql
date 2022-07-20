SELECT  *
FROM Invoice I inner join InvoiceLine L on I.InvoiceId= L.InvoiceId
where I.InvoiceId = 37