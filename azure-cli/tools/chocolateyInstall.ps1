$ErrorActionPreference = 'Stop';
 
$packageName = 'azure-cli'
 
$packageArgs = @{
    packageName    = $packageName
    url            = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.67.0.msi'
    url64          = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.67.0-x64.msi'
    fileType       = "msi"
 
    softwareName   = 'Microsoft CLI 2.0 for Azure'
    checksum       = 'c4cdd13157968052bc2ffeecb4459d466de95d4b9ab8194963ab601d9f613c44'
    checksumType   = 'sha256'
    checksum64     = '723cf2ac1d252ee086841dece0fff10538e15926d2c7ed1085d02c0f82b7393e'
    checksum64Type = 'sha256'
 
    silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
    validExitCodes = @(0, 3010, 1641)
}
 
Install-ChocolateyPackage @packageArgs
