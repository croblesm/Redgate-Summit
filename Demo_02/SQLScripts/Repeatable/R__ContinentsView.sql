-- ==============================================================================
-- 
-- Script name   :   R__ContinentsView.sql
-- Description   :   SQL migration to create Employees view
-- Author        :   Carlos Robles
-- Email         :   crobles@dbamastery.com
-- Twitter       :   @dbamastery
-- Date          :   20200701
--   
-- Notes         :   N/A
-- 
-- ==============================================================================

-- Create continent view
CREATE VIEW vw_continents AS 
    SELECT * FROM continents;