#  /fi "memusage gt 2" is a hack that doesn't return an error if the process doesn't exist
taskkill /IM outlook.exe /F /fi "memusage gt 2"
taskkill /IM ms-teams.exe /F /fi "memusage gt 2"
# this is the name of the process that pops up to ask you to log in
taskkill /IM Microsoft.AAD.BrokerPlugin.exe /F /fi "memusage gt 2"
Start-Sleep 1
Start-Process -WindowStyle Minimized cmd -ArgumentList '/c start /min "" "%USERPROFILE%\AppData\Local\Microsoft\WindowsApps\ms-teams.exe" --process-start-args "--system-initiated"'
# for some insane reason, if we start them both at the same time, teams refuses to start minimized
Start-Sleep 8
Start-Process -WindowStyle Minimized cmd -ArgumentList '/c start /min "" "C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.EXE"' 
