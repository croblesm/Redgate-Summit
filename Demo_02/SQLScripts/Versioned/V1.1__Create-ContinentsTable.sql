-- ==============================================================================
-- 
-- Script name   :   V1.1__Create-ContinentsTable.sql
-- Description   :   SQL migration to create continents table
-- Author        :   Carlos Robles
-- Email         :   crobles@dbamastery.com
-- Twitter       :   @dbamastery
-- Date          :   20200701
--   
-- Notes         :   N/A
-- 
-- ==============================================================================

-- Create sequence for continents table
CREATE SEQUENCE continents_seq;

-- Create continents table
CREATE TABLE continents (
	continent_id INT DEFAULT NEXTVAL ('continents_seq') NOT NULL,
	continent VARCHAR(64) NULL,
    PRIMARY KEY (continent_id)
);