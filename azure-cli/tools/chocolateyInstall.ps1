$ErrorActionPreference = 'Stop';
 
$packageName = 'azure-cli'
 
$packageArgs = @{
    packageName    = $packageName
    url            = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.85.0.msi'
    url64          = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.85.0-x64.msi'
    fileType       = "msi"
 
    softwareName   = 'Microsoft CLI 2.0 for Azure'
    checksum       = '91cc4a41d0386fa07e174e1aee724e0ea8ba73eb002b4b8e91f2e3c8302726ec'
    checksumType   = 'sha256'
    checksum64     = '64dd13263b2fad39a0e44e920fc1a3c958a05cb3f97491929fbf2a73ae77dd72'
    checksum64Type = 'sha256'
 
    silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
    validExitCodes = @(0, 3010, 1641)
}
 
Install-ChocolateyPackage @packageArgs
