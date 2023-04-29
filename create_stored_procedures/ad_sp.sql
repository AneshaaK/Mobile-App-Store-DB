# FREE VS PAID APP’S AD ANALYSIS BASED ON CATEGORY: 
# This stored procedure gives free and paid total ads per day for each category. 

DELIMITER //
CREATE PROCEDURE AD_PROCEDURE()
BEGIN 
SELECT CATEGORY, sum(AD_PER_DAY),TYPE
FROM(
    SELECT A.APP_NAME,C.CATEGORY,AVG(A.AD_FREQ_PHR),AVG(A.APP_ENGAGE_TIME_PD),
	(AVG(A.AD_FREQ_PHR) * AVG(A.APP_ENGAGE_TIME_PD)) AS AD_PER_DAY, A.TYPE 
	FROM APPLICATION AS A
	JOIN DOWNLOAD AS D ON A.APP_ID = D.APP_ID 
	JOIN CATEGORY AS C ON A.CATEGORY_CODE = C.CATEGORY_CODE 
 	WHERE (A.AD_FREQ_PHR <> 0) AND (A.APP_ENGAGE_TIME_PD <> 0)
 	GROUP BY A.APP_ID) AS AD_TAB
GROUP BY CATEGORY,TYPE
ORDER BY CATEGORY,TYPE,SUM(AD_PER_DAY) DESC;
END //
DELIMITER ;
CALL AD_PROCEDURE();

