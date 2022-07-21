SELECT  E.FirstName, E.LastName, Total
FROM Customer inner join Invoice on Customer.CustomerId= Invoice.CustomerId
inner join Employee E on Customer.SupportRepId = E.EmployeeId
where strftime('%Y', InvoiceDate)='2009' and Total in 
(select max(total) from Invoice where strftime('%Y', InvoiceDate)='2009')



-- SELECT  E.FirstName, E.LastName, sum(total) total, strftime('%Y', InvoiceDate) AS "Year"
-- FROM Customer inner join Invoice on Customer.CustomerId= Invoice.CustomerId
-- inner join Employee E on Customer.SupportRepId = E.EmployeeId
-- group by E.FirstName, E.LastName, strftime('%Y', InvoiceDate)