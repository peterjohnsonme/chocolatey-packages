$ErrorActionPreference = 'Stop';
 
$packageName = 'azure-cli'
 
$packageArgs = @{
    packageName    = $packageName
    url            = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.65.0.msi'
    url64          = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.65.0-x64.msi'
    fileType       = "msi"
 
    softwareName   = 'Microsoft CLI 2.0 for Azure'
    checksum       = '384d13e03f9a601b30274c386bc4db382c4fc6effb03b4ffb2fa08fc95188be5'
    checksumType   = 'sha256'
    checksum64     = '210e89aa2a671b373fd3645f0d542cf530cb994abab83a118969d13801090ac4'
    checksum64Type = 'sha256'
 
    silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
    validExitCodes = @(0, 3010, 1641)
}
 
Install-ChocolateyPackage @packageArgs
