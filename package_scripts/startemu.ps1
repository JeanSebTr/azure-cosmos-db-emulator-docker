
Start-Process "c:\Program Files\Azure Cosmos DB Emulator\CosmosDB.Emulator.exe" -ArgumentList @("/noui", "/AllowNetworkAccess", "/NoFirewall", "/Key=C2y6yDjf5/R+ob0N8A7Cgv30VRDJIWEHLM+4QDU5DE2nQ9nDuVTqobD4b8mGGyPMbIZnqyMsEcaGQy67XIw/Jw==")
c:\CosmosDBEmulator\getaddr.ps1
echo "Master Key: C2y6yDjf5/R+ob0N8A7Cgv30VRDJIWEHLM+4QDU5DE2nQ9nDuVTqobD4b8mGGyPMbIZnqyMsEcaGQy67XIw/Jw=="
echo "Exporting SSL Certificate"
New-Item -ItemType directory -Path c:\CosmosDBEmulator\CosmosDBEmulatorCert > null
c:\CosmosDBEmulator\exportcert.ps1
# copy /y c:\CosmosDBEmulator\importcert.ps1 c:\CosmosDBEmulator\CosmosDBEmulatorCert >nul
# echo You can import the SSL certificate from an administrator command prompt on the host by running:
# echo cd /d ^%%LOCALAPPDATA^%%\CosmosDBEmulatorCert
# echo powershell .\importcert.ps1
# echo --------------------------------------------------------------------------------------------------
# echo Starting interactive shell
#cmd /K
$p = Get-Process -Name CosmosDB.Emulator
Wait-Process -Id $p.Id
