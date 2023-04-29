# INAPP_VIEW: It View has Application Name, Category, Total Downloads per Application, where the application has INAPP-Purchases
CREATE VIEW INAPP_VIEW AS (
	SELECT APP_NAME,CATEGORY,COUNT(APP_NAME) AS "TOTAL_DOWNLOADS" 
	FROM APPLICATION JOIN download USING (APP_ID) 
	JOIN CATEGORY USING (CATEGORY_CODE)
	WHERE INAPP_PURCHASE=1 
	GROUP BY APP_ID);