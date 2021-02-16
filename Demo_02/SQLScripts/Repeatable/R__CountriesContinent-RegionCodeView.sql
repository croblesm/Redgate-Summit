-- ==============================================================================
-- 
-- Script name   :   R__ContinentRegionCodeView.sql
-- Description   :   SQL migration to create countries by continent and region including code view
-- Author        :   Carlos Robles
-- Email         :   crobles@dbamastery.com
-- Twitter       :   @dbamastery
-- Date          :   20200701
--   
-- Notes         :   N/A
-- 
-- ==============================================================================

-- Creating compose views
-- Create countries by continent and region including code view
CREATE VIEW vw_countries_continent_region_code AS 
    SELECT
        a.country_id country_code
        ,a.un_m49 m49_code
        ,a.country
        ,c.continent
        ,b.region
    FROM 
        countries a 
        INNER JOIN regions b ON a.region_id = b.region_id
        INNER JOIN continents c ON b.continent_id = c.continent_id;