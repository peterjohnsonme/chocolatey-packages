$ErrorActionPreference = 'Stop';
 
$packageName = 'azure-cli'
 
$packageArgs = @{
    packageName    = $packageName
    url            = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.89.0.msi'
    url64          = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.89.0-x64.msi'
    fileType       = "msi"
 
    softwareName   = 'Microsoft CLI 2.0 for Azure'
    checksum       = 'd16e72345207628e68ed6c62f6db31b54995ef55fa99e338ec337fa132834944'
    checksumType   = 'sha256'
    checksum64     = '9582172475f94330d192b8875e750e5718467318036c21d363135db9193a2948'
    checksum64Type = 'sha256'
 
    silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
    validExitCodes = @(0, 3010, 1641)
}
 
Install-ChocolateyPackage @packageArgs
