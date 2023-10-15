$ErrorActionPreference = 'Stop';
 
$packageName = 'azure-cli'
 
$packageArgs = @{
    packageName    = $packageName
    url            = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.53.0.msi'
    url64          = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.53.0-x64.msi'
    fileType       = "msi"
 
    softwareName   = 'Microsoft CLI 2.0 for Azure'
    checksum       = '7b7a3815e0a905288b461da2da063fbd415325e77066fdfeb8c5525b9f87412d'
    checksumType   = 'sha256'
    checksum64     = '88a58e85206715cbf48ac4c2c409c703308786bd9d06a46e8386d6912a036a79'
    checksum64Type = 'sha256'
 
    silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
    validExitCodes = @(0, 3010, 1641)
}
 
Install-ChocolateyPackage @packageArgs
