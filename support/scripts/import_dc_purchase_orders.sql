/* Import data/dc_purchase_orders.csv */

-- reference: http://stackoverflow.com/questions/17566573/convert-month-shortname-to-month-number

-- mysql:

-- create a "staging" table to temporarily house the data...

DROP TABLE IF EXISTS temp_dc_purchase_orders;
CREATE TABLE `temp_dc_purchase_orders` (
  `Agency` VARCHAR(255) DEFAULT NULL,
   `Commodity` VARCHAR(255) DEFAULT NULL,
   `Supplier` VARCHAR(255) DEFAULT NULL,
   `Ordered Date` VARCHAR(255) DEFAULT NULL,
   `PO_#` VARCHAR(255) DEFAULT NULL,
   `PO Amount` VARCHAR(255) DEFAULT NULL,
   `OBJECTID` INT(11) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8; -- this table definition was copied from sequel pro's "table info" menu after the .csv file was first imported...

-- load the data into the staging table...

LOAD DATA LOCAL INFILE '~/projects/gwu-business/washington-dc-open-data/data/purchase_orders_2015.csv'
INTO TABLE temp_dc_purchase_orders
FIELDS
  TERMINATED BY ','
  ENCLOSED BY '"'
LINES TERMINATED BY '\n' -- mac-style line breaks
  IGNORE 1 LINES
;

-- what are the physical storage requirements in terms of the `PO Amount` column? ...
SELECT max(length(`PO Amount`)) FROM temp_dc_purchase_orders; -- 11 digits/characters

-- which column(s) can/should be the primary key?
SELECT
  `OBJECTID`
  ,count(*) AS row_count
FROM temp_dc_purchase_orders
GROUP BY `OBJECTID`
HAVING row_count > 1; -- 0 rows (`OBJECTID` is a good pk candidate)

SELECT
  `PO_#`
  ,count(*) AS row_count
FROM temp_dc_purchase_orders
GROUP BY `PO_#`
HAVING row_count > 1; -- a lot of rows (`PO_#` is NOT a good pk candidate)

-- transform the staging data into a more usable/friendly form ...
DROP TABLE IF EXISTS dc_purchase_orders;
CREATE TABLE dc_purchase_orders AS (
  SELECT
    po.objectid AS order_id
    ,po.`po_#` AS order_number
    ,po.agency AS agency_name
    ,po.commodity AS commodity_name
    ,po.supplier AS supplier_name
    ,cast(
        str_to_date(
          concat(
            concat("20",SUBSTRING_INDEX(po.`Ordered Date`, '-', -1)),
            "-",
            SUBSTRING_INDEX(SUBSTRING_INDEX(po.`Ordered Date`, '-', -2), '-', 1),
            "-",
            SUBSTRING_INDEX(po.`Ordered Date`, '-', 1)
          ), '%Y-%b-%d') -- string formatted like a date
          AS DATE -- string casted as "date" datatype
    ) AS order_date
    ,cast(po.`PO Amount` AS DECIMAL(12,2)) AS order_price_usd
  FROM temp_dc_purchase_orders AS po
);

-- add indices ...
ALTER TABLE dc_purchase_orders ADD PRIMARY KEY(order_id);

-- clean-up ...
DROP TABLE IF EXISTS temp_dc_purchase_orders;

-- show end results ...
SELECT * FROM dc_purchase_orders;
