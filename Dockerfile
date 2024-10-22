# Build Stage
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build-env

WORKDIR /usr/src/app

COPY *.csproj ./
RUN dotnet restore

COPY . ./
RUN dotnet publish -c Release -o out

# Runtime Stage
FROM mcr.microsoft.com/dotnet/aspnet:8.0

COPY --from=build-env /usr/src/app/out .

EXPOSE 8080

ENTRYPOINT ["dotnet", "Api.dll"]
