- Install powershell on ubuntu
```
./s3/powershell-scripts/install-powershell-ubuntu.sh
```
- Install tools
```
pwsh
Install-Module -Name AWS.Tools.Installer
Install-AWSToolsModule AWS.Tools.S3 -CleanUp
./s3/powershell-scripts/s3.ps1
```