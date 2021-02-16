-- ==============================================================================
-- 
-- Script name   :   U1.3__Drop-RegionsRelated-Tables.sql
-- Description   :   SQL migration to drop Region, Territories, States tables
-- Author        :   Carlos Robles
-- Email         :   crobles@dbamastery.com
-- Twitter       :   @dbamastery
-- Date          :   20200701
--   
-- Notes         :   N/A
-- 
-- ==============================================================================

-- Drop region table
DROP TABLE region;

-- Drop territories table
DROP TABLE territories;

-- Drop us_states table
DROP TABLE us_states;