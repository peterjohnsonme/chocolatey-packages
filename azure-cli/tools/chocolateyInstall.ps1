$ErrorActionPreference = 'Stop';
 
$packageName = 'azure-cli'
 
$packageArgs = @{
    packageName    = $packageName
    url            = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.70.0.msi'
    url64          = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.70.0-x64.msi'
    fileType       = "msi"
 
    softwareName   = 'Microsoft CLI 2.0 for Azure'
    checksum       = '93bf3934ace83cba030dd1637047dbd3c5ff2d7b3bc4ac6037f083f562a9ecd5'
    checksumType   = 'sha256'
    checksum64     = '943ab7f20d2a82eb8a8ed801feb4cb0dfd0e947fc7440198997a822bf90225b9'
    checksum64Type = 'sha256'
 
    silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
    validExitCodes = @(0, 3010, 1641)
}
 
Install-ChocolateyPackage @packageArgs
