#!/bin/bash

mkdir SPY

mkdir RUT

hive -e "CREATE DATABASE financial_data"

hive -f FinancialData_CreateDatabaseTables.sql

./run_data_scrape_spy.sh

./run_data_scrape_rut.sh

