SELECT  Customer.Country, sum(total)
FROM Customer inner join Invoice on Customer.CustomerId= Invoice.CustomerId
group by Customer.Country