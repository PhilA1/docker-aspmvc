#need to add a windows user as an administrator first
Add-WindowsFeature Web-Mgmt-Service
"Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\WebManagement\Server' -Name "EnableRemoteManagement" -Type DWord -Value 1 -Force"
Set-Service -name WMSVC -StartupType Automatic
