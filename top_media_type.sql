select    mediatype, trackssold from 
(SELECT   M.Name as mediatype,sum(quantity) trackssold
FROM InvoiceLine IL inner join track T on t.trackid=IL.trackId
inner join MediaType M on m.mediatypeid=T.mediatypeid
group by  m.Name order by trackssold desc ) limit 5