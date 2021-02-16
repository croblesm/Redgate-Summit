-- ==============================================================================
-- 
-- Script name   :   R__RegionsContinentsView.sql
-- Description   :   SQL migration to create regions by continent view
-- Author        :   Carlos Robles
-- Email         :   crobles@dbamastery.com
-- Twitter       :   @dbamastery
-- Date          :   20200701
--   
-- Notes         :   N/A
-- 
-- ==============================================================================

-- Creating compose views
-- Create regions by continent view
CREATE VIEW vw_regions_continent AS 
    SELECT
        a.region
        ,b.continent
    FROM 
        regions a 
        INNER JOIN continents b ON a.continent_id = b.continent_id;