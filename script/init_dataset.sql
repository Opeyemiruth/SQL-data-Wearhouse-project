/* 
==================================================================================
              Create Dstabase and Schemas
================================================================================

Script purpose: 
  This script creates a new database named 'DataWarehouse' after checking if it exist, than it drop it and recreate .
  Addtionally , the cripts set up three schemas  within the database: 'bronze','sliver' and 'gold' . 

WARNING: 
      Running this script will drop the entire DataWarehouse if it exists.
       All data in the database get deleted parmenently . Proceed with caution
        and ensure you have proper backup before running the script.
*/


use master;
GO
--Drop and recreate the 'dataWarehouse' database 
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABSE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO
--Create the 'DataWarehouse' database
cREATE DATABASE DataWarehouse

CREATE schema bronze;
GO
 create schema sliver;
GO
 create schema gold;
GO
