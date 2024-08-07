select a.id from weather a cross join weather b
where datediff(a.recorddate,b.recorddate) = 1 and a.temperature > b.temperature;
