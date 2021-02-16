-- ==============================================================================
-- 
-- Script name   :   V3.2__Load-Lakes-TableData.sql
-- Description   :   SQL migration to load data into lakes table
-- Author        :   Carlos Robles
-- Email         :   crobles@dbamastery.com
-- Twitter       :   @dbamastery
-- Date          :   20200701
--   
-- Notes         :   N/A
-- 
-- ==============================================================================

-- Load data into lakes table
-- ==============================================================================

SELECT 'Loading lake data, 117 million rows ...'; SELECT pg_sleep(3600); SELECT 'wow, that insert took one hour';
--SELECT 'Hello here we go again ...';