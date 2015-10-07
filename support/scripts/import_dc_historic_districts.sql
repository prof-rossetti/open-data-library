/* Import data/dc_historic_districts.csv */

-- mysql:

CREATE TABLE `dc_historic_districts` (
  `OBJECTID` int(11) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `LABEL` varchar(255) DEFAULT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `NR` varchar(255) DEFAULT NULL,
  `NM` varchar(255) DEFAULT NULL,
  `NHL` varchar(255) DEFAULT NULL,
  `NHS` varchar(255) DEFAULT NULL,
  `NHP` varchar(255) DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `DESIGNATION_DATE` varchar(255) DEFAULT NULL,
  `EDIT_DATE` varchar(255) DEFAULT NULL,
  `Designation` varchar(255) DEFAULT NULL,
  `UniqueID` varchar(255) DEFAULT NULL,
  `HIType` varchar(255) DEFAULT NULL,
  `Shape_Length` varchar(255) DEFAULT NULL,
  `Shape_Area` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
