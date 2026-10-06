$ErrorActionPreference = 'Stop';
 
$packageName = 'azure-cli'
 
$packageArgs = @{
    packageName    = $packageName
    url            = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.91.0.msi'
    url64          = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.91.0-x64.msi'
    fileType       = "msi"
 
    softwareName   = 'Microsoft CLI 2.0 for Azure'
    checksum       = '4001ae98be7c748b6cfd39eddb3f72d6f8d8a0f2bcdecd07c33fa7ac223fbbb3'
    checksumType   = 'sha256'
    checksum64     = 'e9f512d127a9bc6c3832b928ccbf04ab9467a199bca63a1155f9d533ceb9f461'
    checksum64Type = 'sha256'
 
    silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
    validExitCodes = @(0, 3010, 1641)
}
 
Install-ChocolateyPackage @packageArgs
