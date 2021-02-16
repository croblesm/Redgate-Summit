-- ==============================================================================
-- 
-- Script name   :   U2.1__Delete-CustomerRelated-data.sql
-- Description   :   SQL migration to delete data from Categories, Customers, Employees
-- Author        :   Carlos Robles
-- Email         :   crobles@dbamastery.com
-- Twitter       :   @dbamastery
-- Date          :   20200701
--   
-- Notes         :   N/A
-- 
-- ==============================================================================

-- Delete data from categories table
-- ==============================================================================
TRUNCATE TABLE categories;

-- Delete data from customers table
-- ==============================================================================
TRUNCATE TABLE customers;

-- Delete data from employees table
-- ==============================================================================
TRUNCATE TABLE employees;

-- Delete data from employee_territories table
-- ==============================================================================
TRUNCATE TABLE employee_territories;