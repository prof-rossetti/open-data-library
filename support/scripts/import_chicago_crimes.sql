/*

IMPORT data/________.csv

*/

-- mysql:

CREATE TABLE `chicago_crimes` (
  `ID` int(11) DEFAULT NULL,
  `Case Number` varchar(255) DEFAULT NULL,
  `Date` varchar(255) DEFAULT NULL,
  `Block` varchar(255) DEFAULT NULL,
  `IUCR` varchar(255) DEFAULT NULL,
  `Primary Type` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Location Description` varchar(255) DEFAULT NULL,
  `Arrest` varchar(255) DEFAULT NULL,
  `Domestic` varchar(255) DEFAULT NULL,
  `Beat` int(11) DEFAULT NULL,
  `District` int(11) DEFAULT NULL,
  `Ward` int(11) DEFAULT NULL,
  `Community Area` int(11) DEFAULT NULL,
  `FBI Code` varchar(255) DEFAULT NULL,
  `X Coordinate` varchar(255) DEFAULT NULL,
  `Y Coordinate` varchar(255) DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `Updated On` varchar(255) DEFAULT NULL,
  `Latitude` varchar(255) DEFAULT NULL,
  `Longitude` varchar(255) DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
