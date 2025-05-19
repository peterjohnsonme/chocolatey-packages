$ErrorActionPreference = 'Stop';
 
$packageName = 'azure-cli'
 
$packageArgs = @{
    packageName    = $packageName
    url            = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.73.0.msi'
    url64          = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.73.0-x64.msi'
    fileType       = "msi"
 
    softwareName   = 'Microsoft CLI 2.0 for Azure'
    checksum       = 'fc55370ff4f0021339f5ce25064840592896169706e48fbbdf3c4c7949a796c8'
    checksumType   = 'sha256'
    checksum64     = '6622f253e31edf07917a4df302d05c9525a8d6ac0f01c715de2edf282cbdbbc1'
    checksum64Type = 'sha256'
 
    silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
    validExitCodes = @(0, 3010, 1641)
}
 
Install-ChocolateyPackage @packageArgs
