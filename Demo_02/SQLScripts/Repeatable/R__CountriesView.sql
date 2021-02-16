-- ==============================================================================
-- 
-- Script name   :   R__CountriesView.sql
-- Description   :   SQL migration to create countries view
-- Author        :   Carlos Robles
-- Email         :   crobles@dbamastery.com
-- Twitter       :   @dbamastery
-- Date          :   20200701
--   
-- Notes         :   N/A
-- 
-- ==============================================================================

-- Create countries view
CREATE VIEW vw_countries AS 
    SELECT * FROM countries;