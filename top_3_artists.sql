select   trackid,  title,  album, artist, trackssold from 
(SELECT  IL.trackid, T.name as title, Al.title as album, A.Name as artist,sum(quantity) trackssold
FROM InvoiceLine IL inner join track T on t.trackid=IL.trackId
inner join Album Al on Al.AlbumId=T.AlbumId
inner join Artist A on Al.ArtistId=A.ArtistId
group by IL.trackid, T.name , Al.title  ,A.Name order by trackssold desc ) limit 5