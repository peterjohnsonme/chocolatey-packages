$ErrorActionPreference = 'Stop';
 
$packageName = 'azure-cli'
 
$packageArgs = @{
    packageName    = $packageName
    url            = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.59.0.msi'
    url64          = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.59.0-x64.msi'
    fileType       = "msi"
 
    softwareName   = 'Microsoft CLI 2.0 for Azure'
    checksum       = '796d412d1f0796c31baaa8f79fc7000ac73b7ddb048937e2cea065fe3d1b37cd'
    checksumType   = 'sha256'
    checksum64     = '06cf8f541793557fa5993342481af4fb4a4ef5fa588b4d428b530b4ba550be7b'
    checksum64Type = 'sha256'
 
    silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
    validExitCodes = @(0, 3010, 1641)
}
 
Install-ChocolateyPackage @packageArgs
