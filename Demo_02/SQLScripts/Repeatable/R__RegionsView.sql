-- ==============================================================================
-- 
-- Script name   :   R_RegionsView.sql
-- Description   :   SQL migration to regions continents view
-- Author        :   Carlos Robles
-- Email         :   crobles@dbamastery.com
-- Twitter       :   @dbamastery
-- Date          :   20200701
--   
-- Notes         :   N/A
-- 
-- ==============================================================================

-- Create regions view
CREATE VIEW vw_regions AS 
    SELECT * FROM regions;