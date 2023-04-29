# Load data into CATEGORY table
LOAD DATA LOCAL INFILE 'CATEGORY.csv' INTO TABLE category 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

# Load data into DEVELOPER table
LOAD DATA LOCAL INFILE 'DEVELOPER.csv' 
INTO TABLE DEVELOPER 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(DEVELOPER_NAME,WEBSITE,DEVELOPER_EMAIL,DEVELOPER_COUNTRY);

# Load data into USER table
LOAD DATA LOCAL INFILE 'USERS.csv' 
INTO TABLE USER 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(USER_NAME,USER_EMAIL,USER_COUNTRY);