$ErrorActionPreference = 'Stop';
 
$packageName = 'azure-cli'
 
$packageArgs = @{
    packageName    = $packageName
    url            = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.54.0.msi'
    url64          = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.54.0-x64.msi'
    fileType       = "msi"
 
    softwareName   = 'Microsoft CLI 2.0 for Azure'
    checksum       = '2aeb72fa8997af1f429da5ea17b3d5bffe435543217a5ae9788a1ab1e37dff78'
    checksumType   = 'sha256'
    checksum64     = '46a8a59d3d14d77d2edf42ae011c77d8b10efb779c2c6a4f5f58a55a824f7a9a'
    checksum64Type = 'sha256'
 
    silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
    validExitCodes = @(0, 3010, 1641)
}
 
Install-ChocolateyPackage @packageArgs
