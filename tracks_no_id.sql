SELECT   T.Name as TrackName, A.Name as ArtistName, AL.Title, G.Name as Genre, M.name as MediaType
FROM  Track T   inner join InvoiceLine L on L.TrackId= T.TrackId
inner join Album AL on AL.AlbumId = T.AlbumId
inner join Artist A on A.ArtistId= AL.ArtistId
inner join MediaType M on M.MediaTypeId= T.MediaTypeId
inner join Genre G on G.GenreId= T.GenreId
