# Write your MySQL query statement below
select machine_id, round(sum(
    case
    when activity_type = 'start' then -timestamp
    else +timestamp
    end
)/(count(timestamp)/2),3) as processing_time from activity group by machine_id
