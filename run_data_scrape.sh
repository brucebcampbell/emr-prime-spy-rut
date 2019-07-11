#!/bin/bash

rm -rf SPY
rm -rf RUT

mkdir SPY
mkdir RUT

hive -f FinancialData_CreateDatabaseTables.sql

./run_data_scrape_spy.sh

./run_data_scrape_rut.sh

