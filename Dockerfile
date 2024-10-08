FROM mcr.microsoft.com/mssql/server:2022-latest

ARG SA_PASSWOR
ENV SA_PASSWORD="${SA_PASSWOR}"

EXPOSE 1433