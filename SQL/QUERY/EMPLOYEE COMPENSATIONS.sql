--Get Total Compensation Per Department
--Non aggregated columns included require Group By
SELECT 
	SUM(COALESCE(SALARY, 0) + COALESCE(BONUS,0)) as TotalCompensation, 
	DepartmentId
FROM
	EmployeeFull
group by 
	DepartmentId

--Get 4th Highest Paid Employee
;With CTE As
(
	SELECT 
		SUM(COALESCE(SALARY, 0) + COALESCE(BONUS,0)) as TotalCompensation,
		EmployeeId,
		RowNum = ROW_NUMBER() Over (order by  SUM(COALESCE(SALARY, 0) + COALESCE(BONUS,0)) desc )
	From
		EmployeeFull
	group by employeeId
)
Select TotalCompensation, EmployeeId, RowNum
From CTE
WHERE ROWNUM = 4

 


;With CTE2 As
(
	SELECT 
		SUM(COALESCE(SALARY, 0) + COALESCE(BONUS,0)) as TotalCompensation,
		EmployeeId,
		Ranked = RANK() Over (order by SUM(COALESCE(SALARY, 0) + COALESCE(BONUS,0)) desc)
	From
		EmployeeFull
	group by employeeId
)
Select TotalCompensation, EmployeeId, Ranked
From CTE2
--where Ranked = 4 --nTh highest paid employee


;With CTE3 As
(
	SELECT 
		SUM(COALESCE(SALARY, 0) + COALESCE(BONUS,0)) as TotalCompensation,
		EmployeeId,
		DenseRank = DENSE_RANK() Over (order by SUM(COALESCE(SALARY, 0) + COALESCE(BONUS,0)) desc)
	From
		EmployeeFull
	group by employeeId
)
Select TotalCompensation, EmployeeId, DenseRank
From CTE3
--where DenseRank = 4 --nTh highest paid employee