$ErrorActionPreference = 'Stop';
 
$packageName = 'azure-cli'
 
$packageArgs = @{
    packageName    = $packageName
    url            = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.84.0.msi'
    url64          = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.84.0-x64.msi'
    fileType       = "msi"
 
    softwareName   = 'Microsoft CLI 2.0 for Azure'
    checksum       = '3b18199b7fd506c4400c91c4c66bbf1ecf489830283e26ca3c3ff175490d2dca'
    checksumType   = 'sha256'
    checksum64     = '5534b81ec9c826e6f0d38cc9f7640c04d0d8037ffe11ee113723a3682e663485'
    checksum64Type = 'sha256'
 
    silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
    validExitCodes = @(0, 3010, 1641)
}
 
Install-ChocolateyPackage @packageArgs
