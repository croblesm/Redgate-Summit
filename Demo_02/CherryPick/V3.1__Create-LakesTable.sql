-- ==============================================================================
-- 
-- Script name   :   V3.1__Create-LakesTable.sql
-- Description   :   SQL migration to create lakes table
-- Author        :   Carlos Robles
-- Email         :   crobles@dbamastery.com
-- Twitter       :   @dbamastery
-- Date          :   20200701
--   
-- Notes         :   N/A
-- 
-- ==============================================================================

-- Create sequence for lakes table
CREATE SEQUENCE lakes_seq;

-- Create lakes table
CREATE TABLE lakes (
	lake_id CHAR(2) NOT NULL,
	lake VARCHAR(64) NULL,
    description VARCHAR(64) NULL,
    utilization VARCHAR(64) NULL,
    water_quality VARCHAR(64) NULL,
    country_id CHAR(2),
    PRIMARY KEY (lake_id),
    FOREIGN KEY (country_id) REFERENCES countries (country_id)
);