$ErrorActionPreference = 'Stop';
 
$packageName = 'azure-cli'
 
$packageArgs = @{
    packageName    = $packageName
    url            = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.93.0.msi'
    url64          = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.93.0-x64.msi'
    fileType       = "msi"
 
    softwareName   = 'Microsoft CLI 2.0 for Azure'
    checksum       = '8ccf109a45838909e41cc26fdac5a3592c407e0bf7886de67f14d5a0262822b3'
    checksumType   = 'sha256'
    checksum64     = '66c7241d1a10d7c27110e4b434b4ecd3b850db4ddfce12c2e1f0b0d00071e45e'
    checksum64Type = 'sha256'
 
    silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
    validExitCodes = @(0, 3010, 1641)
}
 
Install-ChocolateyPackage @packageArgs
