-- Tested all the tables for Entity, Referential Integrity and Constraint testing as follows:
-- 1. As part of Entity Integrity testing, One query is used to check for duplicates, whereas the other is used to test if the PRIMAY KEY column accepts null values.
-- EX: APPLICATION TABLE
SELECT APP_ID, COUNT(*) FROM APPLICATION GROUP BY APP_ID HAVING COUNT(*)>1;
UPDATE application  SET app_id  =  null WHERE app_id =6144; -- This query is used to check if the the USER table primary key i.e USER_ID is accepting NULL values

-- 2. As part of referential integrity testing, foreign key values are checked against the referenced key in the main table.
-- EX: APPLICATION TABLE REFERENTIAL INTEGRITY TEST
SELECT COUNT(*) FROM APPLICATION WHERE CATEGORY_CODE NOT IN (SELECT CATEGORY_CODE FROM CATEGORY);  -- This query is used to check if Application table Foreign key i.e CATEGORY_CODE has values only from CATEGORY_CODE OF CATEGORY TABLE

--3. CONSTRAINT TEST
-- We have defined a constraint on the rating column saying the values should be between 0 and 5. The below query is used to test the same.
SELECT RATING, COUNT(*) FROM REVIEW GROUP BY RATING HAVING RATING NOT BETWEEN 0 AND 5;

-- Tested views by comparing results with general sql queries
-- ex: 
SELECT * FROM REVIEW_VIEW WHERE APP_NAME = “Truth or Dare Pro”; -- result is one review

SELECT A.APP_ID, A.APP_NAME, A.CATEGORY_CODE, R.REVIEW_TEXT
FROM APPLICATION AS A
JOIN REVIEW AS R ON A.APP_ID = R.APP_ID
WHERE APP_NAME = “Truth or Dare Pro”; -- general query also results one review
