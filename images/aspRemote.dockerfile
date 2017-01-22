# use microsoft IIS build
FROM microsoft/aspnet

# Add a windows user needed for remote connection
RUN powershell -Command new-LocalUser -Name RemoteIISUser -Password  (ConvertTo-SecureString D0cker12 -AsPlainText -Force); \ 
    powershell -Command Add-LocalGroupMember -Group Administrators -Member RemoteIISUser      

# enable IIS remote
RUN powershell -Command Add-WindowsFeature Web-Mgmt-Service; \
    powershell -Command Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\WebManagement\Server' -Name "EnableRemoteManagement" -Type DWord -Value 1 -Force; \
    powershell -Command Set-Service -name WMSVC -StartupType Automatic
               