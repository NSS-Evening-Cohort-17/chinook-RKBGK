SELECT  InvoiceId, InvoiceLineId, T.TrackId, T.Name, A.Name
FROM  Track T   inner join InvoiceLine L on L.TrackId= T.TrackId
inner join Album AL on AL.AlbumId = T.AlbumId
inner join Artist A on A.ArtistId= AL.ArtistId
