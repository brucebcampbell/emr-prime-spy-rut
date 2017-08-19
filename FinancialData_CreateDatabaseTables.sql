
USE financial_data;

drop TABLE if exists spy_price;

CREATE TABLE spy_price  (
tickerName String,
DateOfPrice Date,
Open double,
High double,
Low double,
Close double,
Volume double,
AdjClose double
) stored as orc tblproperties ("orc.compress"="NONE");



drop TABLE if exists rut_price;

CREATE TABLE rut_price  (
tickerName String,
DateOfPrice Date,
Open double,
High double,
Low double,
Close double,
Volume double,
AdjClose double
) stored as orc tblproperties ("orc.compress"="NONE");

