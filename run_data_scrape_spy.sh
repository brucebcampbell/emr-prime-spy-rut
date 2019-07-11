#!/bin/bash

cp SPY_Constituents_Symbol_Name_Sector.csv SPY

cd SPY 

IFS=,    
while read var1 var2 var3 
do
echo $var1, $var2, $var3

./../getdata.sh $var1

fileName=`pwd`'/'$var1.csv

hive -f ../FinancialData_InsertPriceData.sql --hiveconf basketTable=spy_price --hiveconf fileName=$fileName --hiveconf tickerName=$var1

sleep 5

done <SPY_Constituents_Symbol_Name_Sector.csv

rm SPY_Constituents_Symbol_Name_Sector.csv







