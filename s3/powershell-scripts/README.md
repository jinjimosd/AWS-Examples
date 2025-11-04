- Install powershell on ubuntu
```bash
./s3/powershell-scripts/install-powershell-ubuntu.sh
```
- Install tools
```bash
pwsh
Install-Module -Name AWS.Tools.Installer
Install-AWSToolsModule AWS.Tools.S3 -CleanUp
./s3/powershell-scripts/s3.ps1
```