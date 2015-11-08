/*
  Use this script import into a database .csv files from relational-data/evanston_healthscores/
*/

DROP DATABASE IF EXISTS evanston_healthscores;
CREATE DATABASE evanston_healthscores;

/*
  FEED INFO
*/


/*
  BUSINESSES
*/

DROP TABLE IF EXISTS evanston_healthscores.businesses;
CREATE TABLE evanston_healthscores.businesses (
  `business_id` VARCHAR(255) DEFAULT NULL,
  `name` VARCHAR(255) DEFAULT NULL,
  `address` VARCHAR(255) DEFAULT NULL,
  `city` VARCHAR(255) DEFAULT NULL,
  `state` VARCHAR(255) DEFAULT NULL,
  `postal_code` INT(11) DEFAULT NULL,
  `phone_number` VARCHAR(255) DEFAULT NULL,
  `latitude` VARCHAR(255) DEFAULT NULL,
  `longitude` VARCHAR(255) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8; -- this table definition was copied from sequel pro's "table info" menu after the .csv file was first imported...

LOAD DATA LOCAL INFILE '~/projects/gwu-business/open-data-library/relational-data/evanston_healthscores/businesses.csv'
INTO TABLE evanston_healthscores.businesses
FIELDS
  TERMINATED BY ','
  ENCLOSED BY '"'
LINES TERMINATED BY '\n' -- mac-style line breaks
  IGNORE 1 LINES
;

SELECT business_id, count(*) AS row_count
FROM evanston_healthscores.businesses
GROUP BY business_id
HAVING row_count > 1
ORDER BY row_count DESC; -- verify uniqueness of business_id attribute

ALTER TABLE evanston_healthscores.businesses ADD PRIMARY KEY(business_id);

/*
  INSPECTIONS
*/


/*
  VIOLATIONS
*/
