new-LocalUser -Name $ContainerAdmin -Password  (ConvertTo-SecureString  $ContainerPassword -AsPlainText -Force)
Add-LocalGroupMember -Group Administrators -Member $ContainerAdmin