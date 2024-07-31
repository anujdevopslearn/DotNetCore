FROM mcr.microsoft.com/dotnet/runtime:8.0

WORKDIR /app

COPY . /app

RUN dotnet restore *.csproj

RUN dotnet publish -o out

EXPOSE 5000

CMD ["dotnet", "out/*.dll"] 
