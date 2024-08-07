select p.product_id, IFNULL(round(sum(p.price * u.units)/sum(u.units),2),0) 
as average_price 
from prices p left join unitssold u on p.product_id = u.product_id 
and 
u.purchase_date between start_date and end_date group by product_id;
