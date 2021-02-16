-- ==============================================================================
-- 
-- Script name   :   V1.2__Load-Continents-TableData.sql
-- Description   :   SQL migration to load data into continents table
-- Author        :   Carlos Robles
-- Email         :   crobles@dbamastery.com
-- Twitter       :   @dbamastery
-- Date          :   20200701
--   
-- Notes         :   N/A
-- 
-- ==============================================================================

-- Load data into continents table
-- ==============================================================================
INSERT INTO continents (continent) VALUES ('America');
INSERT INTO continents (continent) VALUES ('Europe');
INSERT INTO continents (continent) VALUES ('Africa');
INSERT INTO continents (continent) VALUES ('Asia');
INSERT INTO continents (continent) VALUES ('Oceania');