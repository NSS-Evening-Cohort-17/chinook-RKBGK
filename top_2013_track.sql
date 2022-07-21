SELECT  trackid, sum(quantity)
FROM InvoiceLine L inner join Invoice I
on L.InvoiceId = I.InvoiceId
where strftime('%Y', InvoiceDate)='2013'
group by trackid
having sum(quantity) = (
select max(ctotal) from (select trackid, sum(quantity) ctotal 
FROM  InvoiceLine L inner join Invoice I
on L.InvoiceId = I.InvoiceId
where strftime('%Y', InvoiceDate)='2013' group by trackid ) ) 