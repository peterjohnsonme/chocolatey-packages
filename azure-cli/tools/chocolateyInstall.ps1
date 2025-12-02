$ErrorActionPreference = 'Stop';
 
$packageName = 'azure-cli'
 
$packageArgs = @{
    packageName    = $packageName
    url            = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.81.0.msi'
    url64          = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.81.0-x64.msi'
    fileType       = "msi"
 
    softwareName   = 'Microsoft CLI 2.0 for Azure'
    checksum       = 'c50422feb097ca4b07c41acad355d98cb5c53f05addaaedb8cae215ebd31decb'
    checksumType   = 'sha256'
    checksum64     = '00cd75d65f599e183a94b55cc6557a6a008425ca6c490d5d1d6208fe742c3f57'
    checksum64Type = 'sha256'
 
    silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
    validExitCodes = @(0, 3010, 1641)
}
 
Install-ChocolateyPackage @packageArgs
