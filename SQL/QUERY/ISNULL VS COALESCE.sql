--Coalesce And ISNULL do the same thing

--ISNULL ONLY ACCEPTS 2 ARGUMENTS
select SUM(isnull(salary, 0) + isnull(bonus, 0)) as salarytotal, departmentid 
from EmployeeFull
group by departmentId;

--COALESCE IS ANSII STANDARD AND CAN MANY ARGUMENTS - TAKES THE FIRST NON-NULL ARGUMENT
select SUM(coalesce(salary, 0) + coalesce(bonus, 0)) as salarytotal, departmentid 
from EmployeeFull
group by departmentId;

