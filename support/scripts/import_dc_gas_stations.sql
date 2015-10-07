/* Import data/dc_gas_stations.csv */

-- mysql:

CREATE TABLE `dc_gas_stations` (
  `X` varchar(255) DEFAULT NULL,
  `Y` varchar(255) DEFAULT NULL,
  `OBJECTID` int(11) DEFAULT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `ZIP_CODE` int(11) DEFAULT NULL,
  `FULL_SERVI` int(11) DEFAULT NULL,
  `ADDRID` int(11) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PHONE` varchar(255) DEFAULT NULL,
  `GIS_ID` varchar(255) DEFAULT NULL,
  `XX` varchar(255) DEFAULT NULL, -- this was a duplicate "X" in the original dataset -- WAT?
  `YY` varchar(255) DEFAULT NULL -- this was a duplicate "Y" in the original dataset -- WAT?
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
-- what's up with the X and Y? where did this dataset come from?
