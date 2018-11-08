USE DEVELOPMENT
GO
/*
 2 Columns:
Department #, comma delimited list of employee numbers 
1, List <1, 2>
2, List< 2,3> 
*/

--ANSWER 1
SELECT
     distinct e.deptId as DepartmentId
    , [Employee Id per Department] = STUFF((
          SELECT ',' + cast(em.id as varchar)
          FROM dbo.empTbl em
          WHERE e.deptId = em.deptId
          FOR XML PATH(''), TYPE).value('.', 'NVARCHAR(MAX)'), 1, 1, '')
FROM dbo.empTbl e


--ANSWER 2 , NEED TO REMOVE LEADING COMMA
select distinct e.deptId, DEVELOPMENT.dbo.fn_getEmpsPerDept(e.deptId)
from empTbl e