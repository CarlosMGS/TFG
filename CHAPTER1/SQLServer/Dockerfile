FROM mcr.microsoft.com/mssql/server:2019-GA-ubuntu-16.04
EXPOSE 1433

#debido a los permisos debemos ejecutar ciertos comandos con el ususario root
USER root
RUN apt-get update && apt-get install -y  \
	curl \
	apt-transport-https

USER 10001

RUN mkdir -p /var/opt/mssql/backup
WORKDIR /var/opt/mssql/backup

# Cargamos un par de bases de datos de ejemplo de Microsoft

RUN curl -L -o AdventureWorksDW2017.bak https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorksDW2017.bak
RUN curl -L -o WideWorldImportersDW-Full.bak https://github.com/Microsoft/sql-server-samples/releases/download/wide-world-importers-v1.0/WideWorldImportersDW-Full.bak

RUN mkdir -p /usr/config
WORKDIR /usr/config/

COPY setup.* ./
COPY entrypoint.sh ./

USER root
RUN chown -R 10001:0 setup.sh
RUN chown -R 10001:0 entrypoint.sh

USER 10001

RUN chmod +x setup.sh
RUN chmod +x entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]

CMD ["sleep infinity"]

