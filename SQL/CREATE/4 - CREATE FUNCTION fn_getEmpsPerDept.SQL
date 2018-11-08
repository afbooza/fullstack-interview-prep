USE [DEVELOPMENT]
GO

/****** Object:  UserDefinedFunction [dbo].[fn_getEmpsPerDept]    Script Date: 11/6/2018 2:35:59 PM ******/
DROP FUNCTION [dbo].[fn_getEmpsPerDept]
GO

/****** Object:  UserDefinedFunction [dbo].[fn_getEmpsPerDept]    Script Date: 11/6/2018 2:35:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[fn_getEmpsPerDept](@DeptId INT)
    RETURNS NVarchar(500) 
AS
BEGIN
    Declare @empList NVARCHAR(MAX) = ''

    select @empList = @empList + ',' + cast(id as varchar)
    FROM empTbl  
    where deptId = @DeptId

    RETURN RIGHT(@empList, LEN(@empList)-1)
END
GO


