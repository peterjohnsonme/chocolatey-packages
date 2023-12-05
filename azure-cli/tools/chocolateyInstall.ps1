$ErrorActionPreference = 'Stop';
 
$packageName = 'azure-cli'
 
$packageArgs = @{
    packageName    = $packageName
    url            = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.55.0.msi'
    url64          = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.55.0-x64.msi'
    fileType       = "msi"
 
    softwareName   = 'Microsoft CLI 2.0 for Azure'
    checksum       = 'f80b1e18fff8ce5c710fee9bebd0d720ccb0713a22aa9976040b3ee237cd7406'
    checksumType   = 'sha256'
    checksum64     = 'a63d4ae1f9da4b9973247ebe80e1a1e20f915b8d0dc95082cc6a6ed22043208c'
    checksum64Type = 'sha256'
 
    silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
    validExitCodes = @(0, 3010, 1641)
}
 
Install-ChocolateyPackage @packageArgs
