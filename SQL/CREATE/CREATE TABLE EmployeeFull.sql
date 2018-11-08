USE [DEVELOPMENT]
GO

/****** Object:  Table [dbo].[EmployeeFull]    Script Date: 11/7/2018 7:54:52 PM ******/
DROP TABLE [dbo].[EmployeeFull]
GO

/****** Object:  Table [dbo].[EmployeeFull]    Script Date: 11/7/2018 7:54:52 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[EmployeeFull](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[Firstname] [varchar](50) NULL,
	[Lastname] [varchar](50) NULL,
	[Salary] [decimal](18, 0) NULL,
	[Bonus] [decimal](18, 0) NULL,
	[EmployeeNo] [varchar](50) NULL,
	[DepartmentId] [int] NULL,
	[Email] [varchar](50) NULL
) ON [PRIMARY]
GO


