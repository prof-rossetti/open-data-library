/* Import data/nyc_death_causes.csv */

-- mysql:

CREATE TABLE `nyc_death_causes` (
  `Year` int(11) DEFAULT NULL,
  `Ethnicity` varchar(255) DEFAULT NULL,
  `Sex` varchar(255) DEFAULT NULL,
  `Cause of Death` varchar(255) DEFAULT NULL,
  `Count` int(11) DEFAULT NULL,
  `Percent` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
