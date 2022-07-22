
SELECT  E.FirstName, sum(Total) ctotal
FROM Customer inner join Invoice on Customer.CustomerId= Invoice.CustomerId
inner join Employee E on Customer.SupportRepId = E.EmployeeId
where strftime('%Y', InvoiceDate)='2009'
group by E.FirstName
having sum(Total) = (
select max(ctotal) from (SELECT  EmployeeId, sum(Total) ctotal
FROM Customer inner join Invoice on Customer.CustomerId= Invoice.CustomerId
inner join Employee E on Customer.SupportRepId = E.EmployeeId
where strftime('%Y', InvoiceDate)='2009'
group by EmployeeId))