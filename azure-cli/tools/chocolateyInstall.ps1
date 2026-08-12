$ErrorActionPreference = 'Stop';
 
$packageName = 'azure-cli'
 
$packageArgs = @{
    packageName    = $packageName
    url            = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.89.1.msi'
    url64          = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.89.1-x64.msi'
    fileType       = "msi"
 
    softwareName   = 'Microsoft CLI 2.0 for Azure'
    checksum       = '9f64798fb4ecfab797431dd01e516ed849b7d551b96d21ba9c21a876593e1740'
    checksumType   = 'sha256'
    checksum64     = '84452544ae4bcb0baf8483f767cf3267f2b4da706f1818fd9c5b5e3c3750a913'
    checksum64Type = 'sha256'
 
    silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
    validExitCodes = @(0, 3010, 1641)
}
 
Install-ChocolateyPackage @packageArgs
