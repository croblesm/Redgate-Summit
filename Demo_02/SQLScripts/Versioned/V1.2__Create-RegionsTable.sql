-- ==============================================================================
-- 
-- Script name   :   V1.2__Create-RegionsTable.sql
-- Description   :   SQL migration to create regions table
-- Author        :   Carlos Robles
-- Email         :   crobles@dbamastery.com
-- Twitter       :   @dbamastery
-- Date          :   20200701
--   
-- Notes         :   N/A
-- 
-- ==============================================================================

-- Create sequence for regions table
CREATE SEQUENCE regions_seq;

-- Create regions table
CREATE TABLE regions (
	region_id INT DEFAULT NEXTVAL ('regions_seq') NOT NULL,
	region VARCHAR(64) NULL,
    continent_id INT NOT NULL,
    PRIMARY KEY (region_id),
    FOREIGN KEY (continent_id) REFERENCES continents (continent_id)
);