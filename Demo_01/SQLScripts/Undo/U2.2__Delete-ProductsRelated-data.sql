-- ==============================================================================
-- 
-- Script name   :   U2.2__Load-ProductsRelated-data.sql
-- Description   :   SQL migration to delete data from Shippers, Suppliers, Orders, Products
-- Author        :   Carlos Robles
-- Email         :   crobles@dbamastery.com
-- Twitter       :   @dbamastery
-- Date          :   20200701
--   
-- Notes         :   N/A
-- 
-- ==============================================================================

-- Delete data from shippers table
-- ==============================================================================
TRUNCATE TABLE shippers;

-- Delete data from suppliers table
-- ==============================================================================
TRUNCATE TABLE suppliers;

-- Delete data from orders table
-- ==============================================================================
TRUNCATE TABLE orders;

-- Delete data from products table
-- ==============================================================================
TRUNCATE TABLE products;

-- Delete data from order_details table
-- ==============================================================================
TRUNCATE TABLE order_details;