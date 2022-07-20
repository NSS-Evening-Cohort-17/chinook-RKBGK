SELECT strftime('%Y', InvoiceDate) AS "Year" , sum(InvoiceId) 
from Invoice
group by strftime('%Y', InvoiceDate)