SELECT  InvoiceId, count(InvoiceLineId)
FROM InvoiceLine L group by InvoiceId 