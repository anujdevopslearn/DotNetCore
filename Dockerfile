FROM mcr.microsoft.com/dotnet/sdk:6.0

WORKDIR /app

COPY . /app

RUN dotnet restore *.csproj

RUN dotnet publish -o out

ENV ASPNETCORE_URLS "http://0.0.0.0:5000"

EXPOSE 5000

CMD ["dotnet", "/app/out/dotnet.dll"]
