#!/bin/bash

importers="/var/opt/mssql/data/WideWorldImportersDW.mdf"

# si no existe la base de datos la reinstaura
if [ ! -f "$importers" ]
then
	/opt/mssql-tools/bin/sqlcmd -S 127.0.0.1 -U sa -P $MSSQL_SA_PASSWORD -d master -i /usr/config/setup.sql
fi
