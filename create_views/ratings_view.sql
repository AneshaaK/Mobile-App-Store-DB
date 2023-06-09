# RATING VIEW: It has Application Name, Category, and Average Rating per Application information.
CREATE VIEW RATING_VIEW AS (
	SELECT APP_NAME, CATEGORY, AVG(RATING) AS RATING 
	FROM APPLICATION JOIN REVIEW USING (APP_ID) 
	JOIN CATEGORY USING (CATEGORY_CODE) 
	GROUP BY APP_ID);

