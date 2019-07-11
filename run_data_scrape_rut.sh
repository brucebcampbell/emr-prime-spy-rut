#!/bin/bash

cp RUT_Constituents_Name_Symbol.csv RUT

cd RUT

awk 'NF>1{print $NF}' RUT_Constituents_Name_Symbol.csv > rut_tickers.csv

IFS=,    
while read var1 var2 var3 
do
echo $var1, $var2, $var3

./../getdata.sh $var1

fileName=`pwd`'/'$var1.csv

hive -f ../FinancialData_InsertPriceData.sql --hiveconf basketTable=spy_price --hiveconf fileName=$fileName --hiveconf tickerName=$var1

#sleep 5
done <rut_tickers.csv




