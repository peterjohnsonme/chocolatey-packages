$ErrorActionPreference = 'Stop';
 
$packageName = 'azure-cli'
 
$packageArgs = @{
    packageName    = $packageName
    url            = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.71.0.msi'
    url64          = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.71.0-x64.msi'
    fileType       = "msi"
 
    softwareName   = 'Microsoft CLI 2.0 for Azure'
    checksum       = '977bc39cdbfb1544d966f9c6ba5587836d282b44777759fb273fcb1f7aac35a6'
    checksumType   = 'sha256'
    checksum64     = '3998bb87f38e4a109950eef76605ab8f7ee30f2926ff0d9d0ddceadf6bdfbf12'
    checksum64Type = 'sha256'
 
    silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
    validExitCodes = @(0, 3010, 1641)
}
 
Install-ChocolateyPackage @packageArgs
