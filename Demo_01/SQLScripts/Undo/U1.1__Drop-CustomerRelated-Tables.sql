-- ==============================================================================
-- 
-- Script name   :   U1.1__Drop-CustomerRelated-Tables.sql
-- Description   :   SQL migration to drop Categories, Customers, Employees tables
-- Author        :   Carlos Robles
-- Email         :   crobles@dbamastery.com
-- Twitter       :   @dbamastery
-- Date          :   20200701
--   
-- Notes         :   N/A
-- 
-- ==============================================================================

-- Drop categories table
DROP TABLE categories;

-- Drop customers table
DROP TABLE customers;

-- Drop customer_demographics table
DROP TABLE customer_demographics;

-- Drop customer_customer_demo table
DROP TABLE customer_customer_demo;

-- Drop employees table
DROP TABLE employees;

-- Drop employee_territories table
DROP TABLE employee_territories;