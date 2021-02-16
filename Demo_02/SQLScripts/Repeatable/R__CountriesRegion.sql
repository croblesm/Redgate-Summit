-- ==============================================================================
-- 
-- Script name   :   R__CountriesRegion.sql
-- Description   :   SQL migration to create countries by region view
-- Author        :   Carlos Robles
-- Email         :   crobles@dbamastery.com
-- Twitter       :   @dbamastery
-- Date          :   20200701
--   
-- Notes         :   N/A
-- 
-- ==============================================================================

-- Creating compose views
-- Create countries by region view
CREATE VIEW vw_countries_region AS 
    SELECT
        a.country
        ,b.region
    FROM 
        countries a 
        INNER JOIN regions b ON a.region_id = b.region_id;