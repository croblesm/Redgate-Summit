-- ==============================================================================
-- 
-- Script name   :   U1.Drop-ProductRelated-Tables.sql
-- Description   :   SQL migration to drop Shippers, Suppliers, Orders, Products tables
-- Author        :   Carlos Robles
-- Email         :   crobles@dbamastery.com
-- Twitter       :   @dbamastery
-- Date          :   20200701
--   
-- Notes         :   N/A
-- 
-- ==============================================================================

-- Drop shippers table
DROP TABLE shippers;

-- Drop suppliers table
DROP TABLE suppliers;

-- Drop orders table
DROP TABLE orders;

-- Drop products table
DROP TABLE products;

-- Drop order_details table
DROP TABLE order_details;