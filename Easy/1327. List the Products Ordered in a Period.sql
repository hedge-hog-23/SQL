# Write your MySQL query statement below
select p.product_name,sum(o.unit) as unit from  products p, orders o where p.product_id = o.product_id and 
order_date between '2020-02-01' and '2020-02-29'
group by product_name having sum(unit)>=100;
