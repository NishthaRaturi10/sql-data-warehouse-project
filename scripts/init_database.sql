/*
=============================================================================
Create Database and Schemas
=============================================================================
Script Purpose:
	This script creates a new database 'Project_DataWarehouse' after cheacking if it already exists.
	If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
	within the database: 'bronze', 'silver', 'gold'.

Warning:
	Running this scrip will drop the entire 'Project_DataWarehouse' database id it exists.
	All data in the database will be permanently deleted. Proceed with caution
	and ensure you have proper backups beofre running this script.
*/
--Create database 'Data_Warehouse'
USE master;
GO

--drop and recreate the database 'Project_DataWarehouse' database
IF EXISTS(SELECT 1 FROM sys.databases WHERE name = 'Project_DataWarehouse')
BEGIN
	ALTER DATABASE Project_DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE Project_DataWarehouse;
	END;
GO 
--Create database 'Project_DataWarehouse'
CREATE database Project_DataWarehouse; 

USE project_datawarehouse;
GO

--Create Schemas
CREATE schema bronze;
GO
CREATE schema silver;
GO
CREATE schema gold;
GO
