/* Import data/dc_agency_goals.csv */

-- mysql:

CREATE TABLE `dc_agency_goals` (
  `Fiscal Year` int(11) DEFAULT NULL,
  `Agency Budget Code` varchar(255) DEFAULT NULL,
  `Agency Acronym` varchar(255) DEFAULT NULL,
  `Measure Name` varchar(255) DEFAULT NULL,
  `Data Type (Formula)` varchar(255) DEFAULT NULL,
  `Measure Type` varchar(255) DEFAULT NULL,
  `Directionality` varchar(255) DEFAULT NULL,
  `Frequency` varchar(255) DEFAULT NULL,
  `YE Target` varchar(255) DEFAULT NULL,
  `YE Actual` varchar(255) DEFAULT NULL,
  `YE Rating (%)` varchar(255) DEFAULT NULL,
  `Rating` varchar(255) DEFAULT NULL,
  `Budget Program` varchar(255) DEFAULT NULL,
  `OBJECTID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
