with cte as(
    select managerId from employee group by managerId having count(*)>=5
)

select name from employee a join cte b where a.id=b.managerId
