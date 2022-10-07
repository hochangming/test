 SELECT * FROM covidtracker.covtracker;
 
CREATE TABLE tableToclean_temp LIKE covidtracker.covtracker;
ALTER TABLE tableToclean_temp ADD UNIQUE INDEX (idcovtracker);
INSERT IGNORE INTO tableToclean_temp SELECT * FROM covidtracker.covtracker;
DROP TABLE covidtracker.covtracker;
RENAME TABLE tableToclean_temp TO covidtracker.covtracker;
 SELECT * FROM covidtracker.covtracker;