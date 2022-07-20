SELECT BillingCountry , count(InvoiceId) 
from Invoice
group by BillingCountry