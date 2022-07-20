SELECT strftime('%Y', InvoiceDate) AS "Year" , count(InvoiceId) 
from Invoice
group by strftime('%Y', InvoiceDate)