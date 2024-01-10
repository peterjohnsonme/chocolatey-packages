$ErrorActionPreference = 'Stop';
 
$packageName = 'azure-cli'
 
$packageArgs = @{
    packageName    = $packageName
    url            = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.56.0.msi'
    url64          = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.56.0-x64.msi'
    fileType       = "msi"
 
    softwareName   = 'Microsoft CLI 2.0 for Azure'
    checksum       = '61e31dacfd08bea2b3a00b11bcef91020df9cee447319b813da951a7bccfaf3b'
    checksumType   = 'sha256'
    checksum64     = 'a46d325b740c73cb1f5f05791bdb89393000189b5fbf41a5fafa8b4834a58e1b'
    checksum64Type = 'sha256'
 
    silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
    validExitCodes = @(0, 3010, 1641)
}
 
Install-ChocolateyPackage @packageArgs
