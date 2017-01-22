docker exec arcade.web powershell -Command "Get-Service -name WMSVC"
docker exec arcade.web powershell -Command "Set-Service -name WMSVC -status Running"