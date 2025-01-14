$ErrorActionPreference = 'Stop';
 
$packageName = 'azure-cli'
 
$packageArgs = @{
    packageName    = $packageName
    url            = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.68.0.msi'
    url64          = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.68.0-x64.msi'
    fileType       = "msi"
 
    softwareName   = 'Microsoft CLI 2.0 for Azure'
    checksum       = 'ce472c48311d5ee414e07e160a7b3c76028665e8fd3d5e3bb6dd3713b0ebe5e9'
    checksumType   = 'sha256'
    checksum64     = '258beffe05ebe8faee9b7eb7b8db4fb875a4a38a60cb766a743304668b6a0c96'
    checksum64Type = 'sha256'
 
    silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
    validExitCodes = @(0, 3010, 1641)
}
 
Install-ChocolateyPackage @packageArgs
