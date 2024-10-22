## SQL Server
```sh
docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=P@ssw0rd" \
  -p 1433:1433 \
  --name sqlserver \
  -v "$(pwd)/.docker/mssql:/var/opt/mssql" \
  -d mcr.microsoft.com/mssql/server:2022-latest
```
