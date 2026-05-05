$ErrorActionPreference = 'Stop';
 
$packageName = 'azure-cli'
 
$packageArgs = @{
    packageName    = $packageName
    url            = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.86.0.msi'
    url64          = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.86.0-x64.msi'
    fileType       = "msi"
 
    softwareName   = 'Microsoft CLI 2.0 for Azure'
    checksum       = 'cbfdc69c0cddb6d872b93228e8ab21f4b9c6ddeed67e0fcfec0146076b61d64c'
    checksumType   = 'sha256'
    checksum64     = 'ed2a337d4f6bb7b65056aa90093cf8169fb13c5dcec456b1c38b3152ac321f6a'
    checksum64Type = 'sha256'
 
    silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
    validExitCodes = @(0, 3010, 1641)
}
 
Install-ChocolateyPackage @packageArgs
