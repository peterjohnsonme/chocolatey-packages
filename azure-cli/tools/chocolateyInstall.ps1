$ErrorActionPreference = 'Stop';
 
$packageName = 'azure-cli'
 
$packageArgs = @{
    packageName    = $packageName
    url            = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.61.0.msi'
    url64          = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.61.0-x64.msi'
    fileType       = "msi"
 
    softwareName   = 'Microsoft CLI 2.0 for Azure'
    checksum       = 'f765b484f8279fdd909d884539ada5baf2aaf897e30c2ef3de33cdae42180956'
    checksumType   = 'sha256'
    checksum64     = 'e6906997110d6acfb51a934b1d18b21fb2f314dab6b653644fd7d769e72e668c'
    checksum64Type = 'sha256'
 
    silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
    validExitCodes = @(0, 3010, 1641)
}
 
Install-ChocolateyPackage @packageArgs
