$ErrorActionPreference = 'Stop';
 
$packageName = 'azure-cli'
 
$packageArgs = @{
    packageName    = $packageName
    url            = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.53.1.msi'
    url64          = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.53.1-x64.msi'
    fileType       = "msi"
 
    softwareName   = 'Microsoft CLI 2.0 for Azure'
    checksum       = '57b8e2e4bf02059865eab97ba717ae576d9c45621be85b85045e4b1ed51c6efc'
    checksumType   = 'sha256'
    checksum64     = '50996b7b802e88fa6f5f7eb31b7713b275d4bcbc9676b83c04800ff5e308f4a6'
    checksum64Type = 'sha256'
 
    silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
    validExitCodes = @(0, 3010, 1641)
}
 
Install-ChocolateyPackage @packageArgs
