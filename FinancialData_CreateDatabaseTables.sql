
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

drop TABLE if exists spy_price_extern;
CREATE TABLE spy_price_extern  (
DateOfPrice Date,
Open double,
High double,
Low double,
Close double,
Volume double,
AdjClose double
) PARTITIONED BY (tickername string)
 STORED AS PARQUET
 LOCATION 's3n://aloidia-solutions/parquet-data/fintech/financial_data_external_spy_price';

drop TABLE if exists rut_price_extern;
CREATE TABLE rut_price_extern  (
DateOfPrice Date,
Open double,
High double,
Low double,
Close double,
Volume double,
AdjClose double
) PARTITIONED BY (tickername string) 
 STORED AS PARQUET
 LOCATION 's3n://aloidia-solutions/parquet-data/fintechfinancial_data_external_rut_price';
