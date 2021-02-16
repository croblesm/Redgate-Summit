-- ==============================================================================
-- 
-- Script name   :   V2.2__Load-Regions-TableData.sql
-- Description   :   SQL migration to load data into regions table
-- Author        :   Carlos Robles
-- Email         :   crobles@dbamastery.com
-- Twitter       :   @dbamastery
-- Date          :   20200701
--   
-- Notes         :   N/A
-- 
-- ==============================================================================

-- Load data into regions table
-- ==============================================================================
-- America regions
INSERT INTO regions (continent_id, region) VALUES (1,'North America');
INSERT INTO regions (continent_id, region) VALUES (1,'Central America');
INSERT INTO regions (continent_id, region) VALUES (1,'South America');
INSERT INTO regions (continent_id, region) VALUES (1,'Caribbean');

-- Europe regions
INSERT INTO regions (continent_id, region) VALUES (2,'Eastern Europe');
INSERT INTO regions (continent_id, region) VALUES (2,'Northern Europe');
INSERT INTO regions (continent_id, region) VALUES (2,'Southern Europe');
INSERT INTO regions (continent_id, region) VALUES (2,'Western Europe');

-- Africa regions
INSERT INTO regions (continent_id, region) VALUES (3,'Eastern Africa');
INSERT INTO regions (continent_id, region) VALUES (3,'Middle Africa');
INSERT INTO regions (continent_id, region) VALUES (3,'Northern Africa');
INSERT INTO regions (continent_id, region) VALUES (3,'Southern Africa');
INSERT INTO regions (continent_id, region) VALUES (3,'Western Africa');

-- Asia regions
INSERT INTO regions (continent_id, region) VALUES (4,'Central Asia');
INSERT INTO regions (continent_id, region) VALUES (4,'Eastern Asia');
INSERT INTO regions (continent_id, region) VALUES (4,'South-eastern Asia');
INSERT INTO regions (continent_id, region) VALUES (4,'Southern Asia');
INSERT INTO regions (continent_id, region) VALUES (4,'Western Asia');

-- Oceania regions
INSERT INTO regions (continent_id, region) VALUES (5,'Australia and New Zealand');
INSERT INTO regions (continent_id, region) VALUES (5,'Melanesia');
INSERT INTO regions (continent_id, region) VALUES (5,'Micronesia');
INSERT INTO regions (continent_id, region) VALUES (5,'Polynesia');