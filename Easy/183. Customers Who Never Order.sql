# Write your MySQL query statement below
select c.name as Customers from customers c left join orders d on c.id = d.customerId where d.customerId is null
