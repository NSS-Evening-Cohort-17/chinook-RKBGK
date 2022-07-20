SELECT  InvoiceId, InvoiceLineId, T.TrackId, T.Name
FROM InvoiceLine L inner join Track T on L.TrackId= T.TrackId
