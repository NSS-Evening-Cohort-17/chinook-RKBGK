
SELECT  billingCountry, sum(total)
FROM Invoice i
group by billingCountry
having sum(total) = (
select max(ctotal) from (select billingCountry, sum(total) ctotal 
FROM  Invoice group by billingCountry ) ) 