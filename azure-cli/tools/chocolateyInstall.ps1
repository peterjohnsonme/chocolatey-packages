$ErrorActionPreference = 'Stop';
 
$packageName = 'azure-cli'
 
$packageArgs = @{
    packageName    = $packageName
    url            = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.58.0.msi'
    url64          = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.58.0-x64.msi'
    fileType       = "msi"
 
    softwareName   = 'Microsoft CLI 2.0 for Azure'
    checksum       = '8562a9be470d8e3b484d13b1e3d2c5df169ead407ed8f2581c12180056c50928'
    checksumType   = 'sha256'
    checksum64     = '27c26b0ea7c3d3617c32ce32209ebbbae5b8e5f1441084992660ffce914551a8'
    checksum64Type = 'sha256'
 
    silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
    validExitCodes = @(0, 3010, 1641)
}
 
Install-ChocolateyPackage @packageArgs
