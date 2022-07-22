select  trackid , trackssold from 
(SELECT  trackid, sum(quantity) trackssold
FROM InvoiceLine group by trackid order by trackssold desc ) limit 5
-- select * from InvoiceLine where InvoiceLineId between 7 and 11


-- update InvoiceLine set quantity=6 where InvoiceLineId=11
-- update InvoiceLine set quantity=5 where InvoiceLineId=10
-- update InvoiceLine set quantity=4 where InvoiceLineId=9
-- update InvoiceLine set quantity=3 where InvoiceLineId=8
-- update InvoiceLine set quantity=2 where InvoiceLineId=7


 select distinct *
from ( select trackid , trackssold,
dense_rank() over ( order by trackssold desc ) rank
from (select  trackid , trackssold from 
(SELECT  trackid, sum(quantity) trackssold
FROM InvoiceLine group by trackid  ) ) )
 where rank <= 5



