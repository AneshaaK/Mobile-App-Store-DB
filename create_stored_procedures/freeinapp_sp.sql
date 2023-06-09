#APP STORE IN-APP PURCHASES BASED ON CATEGORY: 
# This stored procedure displays the total downloads per category which only has In-app purchases

DELIMITER //
CREATE PROCEDURE FREE_INAPP()
BEGIN 
SELECT CATEGORY, SUM(TOTAL_DOWNLOADS) 
FROM (
	SELECT A.APP_NAME,C.CATEGORY,COUNT(A.APP_NAME) AS TOTAL_DOWNLOADS 
 	FROM APPLICATION AS A
	JOIN DOWNLOAD AS D ON A.APP_ID = D.APP_ID 
	JOIN CATEGORY AS C ON A.CATEGORY_CODE = C.CATEGORY_CODE
 	WHERE A.INAPP_PURCHASE = 1 
 	GROUP BY BY A.APP_ID )
GROUP BY CATEGORY;
END //
DELIMITER ;
CALL FREE_INAPP();
