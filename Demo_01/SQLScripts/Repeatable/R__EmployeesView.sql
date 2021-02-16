-- ==============================================================================
-- 
-- Script name   :   R__EmployeesView.sql
-- Description   :   SQL migration to create Employees view
-- Author        :   Carlos Robles
-- Email         :   crobles@dbamastery.com
-- Twitter       :   @dbamastery
-- Date          :   20200701
--   
-- Notes         :   N/A
-- 
-- ==============================================================================

-- Create employees view
CREATE VIEW vw_employees AS
    SELECT first_name, last_name, title FROM employees;