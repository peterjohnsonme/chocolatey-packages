$ErrorActionPreference = 'Stop';
 
$packageName = 'azure-cli'
 
$packageArgs = @{
    packageName    = $packageName
    url            = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.88.0.msi'
    url64          = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.88.0-x64.msi'
    fileType       = "msi"
 
    softwareName   = 'Microsoft CLI 2.0 for Azure'
    checksum       = 'c5aae807ed3041b9f8b28112dccaf28519da7564ff26ed87423e12d73b01ff69'
    checksumType   = 'sha256'
    checksum64     = '9146f0ede206e09e17d66770fb2245b1b21f0bba65dbe1d1b9f8c6cc9e0d3e6b'
    checksum64Type = 'sha256'
 
    silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
    validExitCodes = @(0, 3010, 1641)
}
 
Install-ChocolateyPackage @packageArgs
