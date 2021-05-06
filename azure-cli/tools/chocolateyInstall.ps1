$ErrorActionPreference = 'Stop';
 
$packageName = 'azure-cli'
 
$packageArgs = @{
    packageName    = $packageName
    url            = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.23.0.msi'
    fileType       = "msi"
 
    softwareName   = 'Microsoft CLI 2.0 for Azure'
    checksum       = '3679d193f8bbcc78117f4cee1bdb99e5866beb6c4b7290c5941cd2d27a4ea855'
    checksumType   = 'sha256'
 
    silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
    validExitCodes = @(0, 3010, 1641)
}
 
Install-ChocolateyPackage @packageArgs
