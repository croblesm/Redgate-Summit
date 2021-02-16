-- ==============================================================================
-- 
-- Script name   :   U1.1__Drop-ContinentsTable.sql
-- Description   :   SQL migration to drop continents table
-- Author        :   Carlos Robles
-- Email         :   crobles@dbamastery.com
-- Twitter       :   @dbamastery
-- Date          :   20200701
--   
-- Notes         :   N/A
-- 
-- ==============================================================================

-- Drop sequence from continents table
DROP SEQUENCE continents_seq;

-- Drop continents table
DROP TABLE continents;