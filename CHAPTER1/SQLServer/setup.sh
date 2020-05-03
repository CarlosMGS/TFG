#!/bin/bash

importers="/var/opt/mssql/data/WideWorldImportersDW.mdf"

for i in `seq 1 30`;
    do
      sleep 1
done 

# si no existe la base de datos la reinstaura
if [ ! -f "$importers" ]
then
	/opt/mssql-tools/bin/sqlcmd -S 127.0.0.1 -U sa -P PaSSw0rd -d master -i /usr/config/setup.sql
fi
