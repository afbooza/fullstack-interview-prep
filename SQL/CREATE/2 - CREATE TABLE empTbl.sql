-- Create a new table called '[empTbl]' in schema '[dbo]' in database '[DEVELOPMENT]'
-- Drop the table if it already exists
use DEVELOPMENT
go

IF OBJECT_ID('[DEVELOPMENT].[dbo].[empTbl]', 'U') IS NOT NULL
DROP TABLE [DEVELOPMENT].[dbo].[empTbl]
GO
-- Create the table in the specified database and schema
CREATE TABLE [DEVELOPMENT].[dbo].[empTbl]
(
    [id] INT NOT NULL PRIMARY KEY, -- Primary Key column
    [firstname] [NVARCHAR](50) NOT NULL,
    [lastname] [NVARCHAR](50) NOT NULL,
    [deptId] INT NOT NULL
    -- Specify more columns here
);
GO