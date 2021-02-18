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

SELECT 'Loading world''s lake data, 117 million rows ...'; SELECT pg_sleep(5); SELECT 'wow, this insert operation took a few hours';