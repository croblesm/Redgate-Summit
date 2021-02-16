-- ==============================================================================
-- 
-- Script name   :   R__LakesView.sql
-- Description   :   SQL migration to create Lakes view
-- Author        :   Carlos Robles
-- Email         :   crobles@dbamastery.com
-- Twitter       :   @dbamastery
-- Date          :   20200701
--   
-- Notes         :   N/A
-- 
-- ==============================================================================

-- Create lakes view
CREATE VIEW vw_lakes AS 
    SELECT * FROM lakes;