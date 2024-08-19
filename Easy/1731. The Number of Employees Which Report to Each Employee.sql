# Write your MySQL query statement below
select e.employee_id,e.name,count(f.name) as reports_count,round(avg(f.age),0) as average_age from employees e cross join employees f on e.employee_id = f.reports_to group by e.employee_id order by employee_id
