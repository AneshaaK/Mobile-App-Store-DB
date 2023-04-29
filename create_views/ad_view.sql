# AD_VIEW: It view has Application Name, Category, Average Ad frequency per hour, 
# Average Application Engagement Time per day, Total Ads per Day, and Paid/Free-Type for applications with ads and minimum app engagement time.
CREATE OR REPLACE VIEW AD_VIEW AS (
    SELECT
        APP_NAME,
        CATEGORY,
        AVG(AD_FREQ_PHR) AS AD_FREQ_PHR,
        AVG(APP_ENGAGE_TIME_PD) AS APP_ENGAGE_TIME_PD,
        AVG(AD_FREQ_PHR)*AVG(APP_ENGAGE_TIME_PD) AS AD_PER_DAY,
        TYPE
    FROM
        APPLICATION
        JOIN download USING (APP_ID)
        JOIN CATEGORY USING (CATEGORY_CODE)
    WHERE AD_FREQ_PHR !=0 AND APP_ENGAGE_TIME_PD !=0
    GROUP BY APP_ID);
