-- ==============================================================================
-- 
-- Script name   :   U2.3__Load-RegionsRelated-data.sql
-- Description   :   SQL migration to delete data from Region, Territories, States
-- Author        :   Carlos Robles
-- Email         :   crobles@dbamastery.com
-- Twitter       :   @dbamastery
-- Date          :   20200701
--   
-- Notes         :   N/A
-- 
-- ==============================================================================

-- Delete data from region table
-- ==============================================================================
TRUNCATE TABLE region;

-- Delete data from territories table
-- ==============================================================================
TRUNCATE TABLE territories;

-- Delete data from us_states table
-- ==============================================================================
TRUNCATE TABLE us_states;