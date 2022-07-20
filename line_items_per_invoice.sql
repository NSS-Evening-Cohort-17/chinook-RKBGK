SELECT  I.InvoiceId, count(L.InvoiceLineId)
FROM Invoice I inner join InvoiceLine L on I.InvoiceId= L.InvoiceId
group by I.InvoiceId 