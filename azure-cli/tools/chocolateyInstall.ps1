$ErrorActionPreference = 'Stop';
 
$packageName = 'azure-cli'
 
$packageArgs = @{
    packageName    = $packageName
    url            = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.64.0.msi'
    url64          = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.64.0-x64.msi'
    fileType       = "msi"
 
    softwareName   = 'Microsoft CLI 2.0 for Azure'
    checksum       = '2b734b89e8997bd05492b9ede321477a7231c752e7ee8145234e05dbd50cddd9'
    checksumType   = 'sha256'
    checksum64     = 'b1f0af2647fe47e9035e67116d720eeb1278dad101cca3b207ef52277538ba1c'
    checksum64Type = 'sha256'
 
    silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
    validExitCodes = @(0, 3010, 1641)
}
 
Install-ChocolateyPackage @packageArgs
