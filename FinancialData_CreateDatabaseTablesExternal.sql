
USE financial_data_external;

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
) PARTITIONED BY (tickername string) row format delimited fields terminated by ','
 lines terminated by '\n'
 STORED AS TEXTFILE
 LOCATION 's3n://sa-bcampbell/external_tables/demo/financial_data_external_spy_price';

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
) PARTITIONED BY (tickername string) row format delimited fields terminated by ','
 lines terminated by '\n'
 STORED AS TEXTFILE
 LOCATION 's3n://sa-bcampbell/external_tables/demo/financial_data_external_rut_price';

