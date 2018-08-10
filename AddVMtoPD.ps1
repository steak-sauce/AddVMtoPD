$PD = "PD_NAME_HERE"
Get-NTNXVM | where-object {$_.protectionType -Match "unprotected" -and $_.vmName -notlike "*CVM*"} | % { Add-NTNXProtectionDomainVM -Ids $_.vmId -PdName "$PD" }
