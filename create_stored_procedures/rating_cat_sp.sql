# RATING PER CATEGORY: 
#This Stored procedure is used to get the overall average rating per category.

DELIMITER //
CREATE PROCEDURE RATING_CAT()
BEGIN
SELECT CATEGORY, AVG(RATING) 
FROM (
	SELECT APP_NAME, CATEGORY, AVG(RATING) AS RATING 
	FROM APPLICATION 
	JOIN REVIEW USING (APP_ID) 
	JOIN CATEGORY USING (CATEGORY_CODE) 
	GROUP BY APP_ID) AS RATING_TAB 
GROUP BY (CATEGORY);
END //DELIMITER ;
CALL RATING_CAT();
