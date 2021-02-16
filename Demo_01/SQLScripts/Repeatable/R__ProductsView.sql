-- ==============================================================================
-- 
-- Script name   :   R__ProductsView.sql
-- Description   :   SQL migration to create Products view
-- Author        :   Carlos Robles
-- Email         :   crobles@dbamastery.com
-- Twitter       :   @dbamastery
-- Date          :   20200701
--   
-- Notes         :   N/A
-- 
-- ==============================================================================

-- Create products view
CREATE VIEW vw_products AS 
    SELECT product_name, unit_price FROM products;