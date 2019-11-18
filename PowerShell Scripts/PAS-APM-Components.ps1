#Service Status Check for Component Server
$HostName = "components"
$PORT = 51444
$SYSLOGSERVER="10.0.0.2"
$Version = "1.0.0000"

#Cyberark Password Manager Service Check
$MonitorType = "ApplicationMonitor"
$ServiceName = Get-Service "Cyberark Password Manager" | Format-Table -HideTableHeaders Name | Out-String
$ServiceStatus = Get-Service "Cyberark Password Manager" | Format-Table -HideTableHeaders Status | Out-String
    If ($ServiceStatus -like "*Running*") { $ServiceStatusNumeric = 1 } else { $ServiceStatusNumeric = 0 }
$syslogoutput = "CEF:0|CyberArk|$MonitorType|$Version|$HostName|$ServiceName|$ServiceStatus|$ServiceStatusNumeric|"
#cleanup command to remove new lines and carriage returns
$syslogoutputclean = $syslogoutput -replace "`n|`r"
$syslogoutputclean | ConvertTo-Json
#send syslog to SIEM
$UDPCLient = New-Object System.Net.Sockets.UdpClient
$UDPCLient.Connect($SYSLOGSERVER, $PORT)
$Encoding = [System.Text.Encoding]::ASCII
$ByteSyslogMessage = $Encoding.GetBytes(''+$syslogoutputclean+'')
$UDPCLient.Send($ByteSyslogMessage, $ByteSyslogMessage.Length)

#Cyberark Central Policy Manager Scanner Service Check
$MonitorType = "ApplicationMonitor"
$ServiceName = Get-Service "Cyberark Central Policy Manager Scanner" | Format-Table -HideTableHeaders Name | Out-String
$ServiceStatus = Get-Service "Cyberark Central Policy Manager Scanner" | Format-Table -HideTableHeaders Status | Out-String
    If ($ServiceStatus -like "*Running*") { $ServiceStatusNumeric = 1 } else { $ServiceStatusNumeric = 0 }
$syslogoutput = "CEF:0|CyberArk|$MonitorType|$Version|$HostName|$ServiceName|$ServiceStatus|$ServiceStatusNumeric|"
#cleanup command to remove new lines and carriage returns
$syslogoutputclean = $syslogoutput -replace "`n|`r"
$syslogoutputclean | ConvertTo-Json
#send syslog to SIEM
$UDPCLient = New-Object System.Net.Sockets.UdpClient
$UDPCLient.Connect($SYSLOGSERVER, $PORT)
$Encoding = [System.Text.Encoding]::ASCII
$ByteSyslogMessage = $Encoding.GetBytes(''+$syslogoutputclean+'')
$UDPCLient.Send($ByteSyslogMessage, $ByteSyslogMessage.Length)

#CyberArk Vault-Conjur Synchronizer Service Check
$MonitorType = "ApplicationMonitor"
$ServiceName = Get-Service "CyberArk Vault-Conjur Synchronizer" | Format-Table -HideTableHeaders Name | Out-String
$ServiceStatus = Get-Service "CyberArk Vault-Conjur Synchronizer" | Format-Table -HideTableHeaders Status | Out-String
    If ($ServiceStatus -like "*Running*") { $ServiceStatusNumeric = 1 } else { $ServiceStatusNumeric = 0 }
$syslogoutput = "CEF:0|CyberArk|$MonitorType|$Version|$HostName|$ServiceName|$ServiceStatus|$ServiceStatusNumeric|"
#cleanup command to remove new lines and carriage returns
$syslogoutputclean = $syslogoutput -replace "`n|`r"
$syslogoutputclean | ConvertTo-Json
#send syslog to SIEM
$UDPCLient = New-Object System.Net.Sockets.UdpClient
$UDPCLient.Connect($SYSLOGSERVER, $PORT)
$Encoding = [System.Text.Encoding]::ASCII
$ByteSyslogMessage = $Encoding.GetBytes(''+$syslogoutputclean+'')
$UDPCLient.Send($ByteSyslogMessage, $ByteSyslogMessage.Length)

#Cyber-Ark Privileged Session Manager Service Check
$MonitorType = "ApplicationMonitor"
$ServiceName = Get-Service "Cyber-Ark Privileged Session Manager" | Format-Table -HideTableHeaders Name | Out-String
$ServiceStatus = Get-Service "Cyber-Ark Privileged Session Manager" | Format-Table -HideTableHeaders Status | Out-String
    If ($ServiceStatus -like "*Running*") { $ServiceStatusNumeric = 1 } else { $ServiceStatusNumeric = 0 }
$syslogoutput = "CEF:0|CyberArk|$MonitorType|$Version|$HostName|$ServiceName|$ServiceStatus|$ServiceStatusNumeric|"
#cleanup command to remove new lines and carriage returns
$syslogoutputclean = $syslogoutput -replace "`n|`r"
$syslogoutputclean | ConvertTo-Json
#send syslog to SIEM
$UDPCLient = New-Object System.Net.Sockets.UdpClient
$UDPCLient.Connect($SYSLOGSERVER, $PORT)
$Encoding = [System.Text.Encoding]::ASCII
$ByteSyslogMessage = $Encoding.GetBytes(''+$syslogoutputclean+'')
$UDPCLient.Send($ByteSyslogMessage, $ByteSyslogMessage.Length)

#PVWA World Wide Web Publishing Service Check
$MonitorType = "ApplicationMonitor"
$ServiceName = Get-Service "W3SVC" | Format-Table -HideTableHeaders DisplayName | Out-String
$ServiceStatus = Get-Service "W3SVC" | Format-Table -HideTableHeaders Status | Out-String
    If ($ServiceStatus -like "*Running*") { $ServiceStatusNumeric = 1 } else { $ServiceStatusNumeric = 0 }
$syslogoutput = "CEF:0|CyberArk|$MonitorType|$Version|$HostName|$ServiceName|$ServiceStatus|$ServiceStatusNumeric|"
#cleanup command to remove new lines and carriage returns
$syslogoutputclean = $syslogoutput -replace "`n|`r"
$syslogoutputclean | ConvertTo-Json
#send syslog to SIEM
$UDPCLient = New-Object System.Net.Sockets.UdpClient
$UDPCLient.Connect($SYSLOGSERVER, $PORT)
$Encoding = [System.Text.Encoding]::ASCII
$ByteSyslogMessage = $Encoding.GetBytes(''+$syslogoutputclean+'')
$UDPCLient.Send($ByteSyslogMessage, $ByteSyslogMessage.Length)

#Remote Desktop Services Service Check
$MonitorType = "ApplicationMonitor"
$ServiceName = Get-Service "TermService" | Format-Table -HideTableHeaders DisplayName | Out-String
$ServiceStatus = Get-Service "TermService" | Format-Table -HideTableHeaders Status | Out-String
    If ($ServiceStatus -like "*Running*") { $ServiceStatusNumeric = 1 } else { $ServiceStatusNumeric = 0 }
$syslogoutput = "CEF:0|CyberArk|$MonitorType|$Version|$HostName|$ServiceName|$ServiceStatus|$ServiceStatusNumeric|"
#cleanup command to remove new lines and carriage returns
$syslogoutputclean = $syslogoutput -replace "`n|`r"
$syslogoutputclean | ConvertTo-Json
#send syslog to SIEM
$UDPCLient = New-Object System.Net.Sockets.UdpClient
$UDPCLient.Connect($SYSLOGSERVER, $PORT)
$Encoding = [System.Text.Encoding]::ASCII
$ByteSyslogMessage = $Encoding.GetBytes(''+$syslogoutputclean+'')
$UDPCLient.Send($ByteSyslogMessage, $ByteSyslogMessage.Length)

#PSM Session Count
$MonitorType = "ApplicationMonitor"
$PSMSessionCount = Get-RDUserSession | Measure-Object | Format-Table -HideTableHeaders Count | Out-String
$syslogoutput = "CEF:0|CyberArk|$MonitorType|$Version|$HostName|$ServiceName|$ServiceStatus|$ServiceStatusNumeric|"
#cleanup command to remove new lines and carriage returns
$syslogoutputclean = $syslogoutput -replace "`n|`r"
$syslogoutputclean | ConvertTo-Json
#send syslog to SIEM
$UDPCLient = New-Object System.Net.Sockets.UdpClient
$UDPCLient.Connect($SYSLOGSERVER, $PORT)
$Encoding = [System.Text.Encoding]::ASCII
$ByteSyslogMessage = $Encoding.GetBytes(''+$syslogoutputclean+'')
$UDPCLient.Send($ByteSyslogMessage, $ByteSyslogMessage.Length)

#Hardware Performance Checks
$MonitorType = "HardwareMonitor"
$CPU = Get-WmiObject win32_processor | Measure-Object -property LoadPercentage -Average | Select Average | Format-Table -HideTableHeaders Average | Out-String
$os = Get-Ciminstance Win32_OperatingSystem
$FreePhysicalMemory = $os.FreePhysicalMemory
$FreePhysicalMemoryMB = $FreePhysicalMemory / 1024
$TotalPhysicalMemoryMB = Get-WMIObject Win32_PhysicalMemory | Measure -Property capacity -Sum | %{$_.sum/1Mb}
$PercentageUsedPhysicalMemory = ($TotalPhysicalMemoryMB - $FreePhysicalMemoryMB) / $TotalPhysicalMemoryMB * 100
$MemoryDecimal = $PercentageUsedPhysicalMemory
$Memory = [math]::Round($MemoryDecimal,1)
$TotalSpace = get-WmiObject win32_logicaldisk | Where-Object{$_.DeviceID -like "*C*"} | Format-Table -HideTableHeaders Size | Out-String
$FreeSpace = get-WmiObject win32_logicaldisk | Where-Object{$_.DeviceID -like "*C*"} | Format-Table -HideTableHeaders FreeSpace | Out-String
$TotalSpaceGBDecimal = $TotalSpace / 1073741824
$FreeSpaceGBDecimal = $FreeSpace / 1073741824
$TotalSpaceGB = [math]::Round($TotalSpaceGBDecimal,1)
$FreeSpaceGB = [math]::Round($FreeSpaceGBDecimal,1)
$syslogoutput = "CEF:0|CyberArk|$MonitorType|$Version|$HostName|$CPU|$Memory|$TotalSpaceGB|$FreeSpaceGB"
#cleanup command to remove new lines and carriage returns
$syslogoutputclean = $syslogoutput -replace "`n|`r"
$syslogoutputclean | ConvertTo-Json
#send syslog to SIEM
$UDPCLient = New-Object System.Net.Sockets.UdpClient
$UDPCLient.Connect($SYSLOGSERVER, $PORT)
$Encoding = [System.Text.Encoding]::ASCII
$ByteSyslogMessage = $Encoding.GetBytes(''+$syslogoutputclean+'')
$UDPCLient.Send($ByteSyslogMessage, $ByteSyslogMessage.Length)
