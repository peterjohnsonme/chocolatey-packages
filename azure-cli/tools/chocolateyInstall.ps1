$ErrorActionPreference = 'Stop';
 
$packageName = 'azure-cli'
 
$packageArgs = @{
    packageName    = $packageName
    url            = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.87.0.msi'
    url64          = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.87.0-x64.msi'
    fileType       = "msi"
 
    softwareName   = 'Microsoft CLI 2.0 for Azure'
    checksum       = '09ba4a47300d9c256055dcb1974608b64a14bc8a8b6bcb7a0d178bb9c97d3cb8'
    checksumType   = 'sha256'
    checksum64     = '6e159983a19aabcbe4f6380368ed5e0775ad11d93e86d4fd41bb0e314d3731d9'
    checksum64Type = 'sha256'
 
    silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
    validExitCodes = @(0, 3010, 1641)
}
 
Install-ChocolateyPackage @packageArgs
