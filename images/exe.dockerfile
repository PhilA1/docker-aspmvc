# use microsoft server 2016
FROM microsoft/dotnet-framework

# deploy the app
COPY . /app
WORKDIR /app 

# run application
ENTRYPOINT /app/Connect4.exe 