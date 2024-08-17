with t1 as (
    select * from trips t join users u on t.client_id=u.users_id and banned="No" and request_at between "2013-10-01" and "2013-10-03"
),
t2 as (
    select * from trips t join users u on t.driver_id=u.users_id and banned="No" and request_at between "2013-10-01" and "2013-10-03"
)
select t1.request_at as "Day", round(sum(case when t1.status!="completed" then 1 else 0 end)/count(*),2) as "Cancellation Rate" 
from t1 join t2 on t1.id=t2.id group by t1.request_at;
