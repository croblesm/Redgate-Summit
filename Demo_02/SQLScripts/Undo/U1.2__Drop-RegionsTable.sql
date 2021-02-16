-- ==============================================================================
-- 
-- Script name   :   U1.2__Drop-RegionsTable.sql
-- Description   :   SQL migration to drop regions table
-- Author        :   Carlos Robles
-- Email         :   crobles@dbamastery.com
-- Twitter       :   @dbamastery
-- Date          :   20200701
--   
-- Notes         :   N/A
-- 
-- ==============================================================================

-- Drop sequence from regions table
DROP SEQUENCE regions_seq;

-- Drop regions table
DROP TABLE regions;