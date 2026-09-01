$ErrorActionPreference = 'Stop';
 
$packageName = 'azure-cli'
 
$packageArgs = @{
    packageName    = $packageName
    url            = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.90.0.msi'
    url64          = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.90.0-x64.msi'
    fileType       = "msi"
 
    softwareName   = 'Microsoft CLI 2.0 for Azure'
    checksum       = '2a8f25ce14cac8824401be6ae3fbba374c0bded85b2f9ade17c6767d3e0d0192'
    checksumType   = 'sha256'
    checksum64     = 'd5c1918eab32063219bea575e0d545149969c24751cb5f90ad2388b5df72222f'
    checksum64Type = 'sha256'
 
    silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
    validExitCodes = @(0, 3010, 1641)
}
 
Install-ChocolateyPackage @packageArgs
