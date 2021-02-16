-- ==============================================================================
-- 
-- Script name   :   V1.3__Create-CountriesTable.sql
-- Description   :   SQL migration to create countries table
-- Author        :   Carlos Robles
-- Email         :   crobles@dbamastery.com
-- Twitter       :   @dbamastery
-- Date          :   20200701
--   
-- Notes         :   N/A
-- 
-- ==============================================================================

 -- Create countries table
CREATE TABLE countries (
	country_id CHAR(2) NOT NULL,
	country VARCHAR(64) NULL,
    un_m49 INT NOT NULL,
	region_id INT NOT NULL,
    PRIMARY KEY (country_id),
    FOREIGN KEY (region_id) REFERENCES regions (region_id)
);