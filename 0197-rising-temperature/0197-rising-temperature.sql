# Write your MySQL query statement below
select today.id
from Weather as today
join Weather as yesterday
on date_sub(today.recordDate, interval 1 day) = yesterday.recordDate
where today.temperature > yesterday.temperature