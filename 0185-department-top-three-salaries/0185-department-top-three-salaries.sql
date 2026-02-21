# Write your MySQL query statement below
with sh as(
    SELECT 
        d.name AS Department,
        e.name AS Employee,
        e.salary AS Salary,
        e.departmentID,
        DENSE_RANK() 
            OVER (PARTITION BY e.departmentId ORDER BY e.salary DESC) AS rnk
    FROM Employee e
    JOIN Department d 
        ON e.departmentId = d.id
)

select Department, Employee, Salary
from sh
where rnk <= 3
