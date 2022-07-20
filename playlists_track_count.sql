SELECT  P.PlaylistId, count(PT.TrackId)
FROM Playlist P inner join PlaylistTrack PT on P.PlaylistId= PT.PlaylistId
group by P.PlaylistId