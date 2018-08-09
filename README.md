
# Add unprotected VMs to existing protection domain 
`Get-NTNXVM | where-object {$_.protectionType -Match "unprotected" -and $_.vmName -notlike "*CVM*"} | % { Add-NTNXProtectionDomainVM -Ids $_.vmId -PdName "PD" }`
