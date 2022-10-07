SELECT * FROM covidtracker.covtracker; 

CREATE TABLE tableToclean_temp LIKE covidtracker.covtracker;
ALTER TABLE tableToclean_temp ADD UNIQUE INDEX (pr_date,age_group);
INSERT IGNORE INTO tableToclean_temp SELECT * FROM covidtracker.covtracker;
DROP TABLE covidtracker.covtracker;
RENAME TABLE tableToclean_temp TO covidtracker.covtracker;
 SELECT * FROM covidtracker.covtracker;