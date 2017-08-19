#!/bin/bash

mkdir SPY

mkdir RUT
hive -e "CREATE DATABASE financial_data_external"

hive -f FinancialData_CreateDatabaseTablesExternal.sql

./run_data_scrape_external_spy.sh

./run_data_scrape_external_rut.sh

