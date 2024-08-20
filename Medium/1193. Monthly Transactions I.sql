# Write your MySQL query statement below
SELECT LEFT(trans_date, 7) AS month,
    country, 
    COUNT(id) AS trans_count,
    SUM(state = 'approved') as approved_count,
    SUM(amount) AS trans_total_amount,
    SUM((state = 'approved') * amount) as approved_total_amount
from Transactions
group by month, country;
