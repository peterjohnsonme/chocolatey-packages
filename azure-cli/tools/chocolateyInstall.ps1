$ErrorActionPreference = 'Stop';
 
$packageName = 'azure-cli'
 
$packageArgs = @{
    packageName    = $packageName
    url            = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.63.0.msi'
    url64          = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.63.0-x64.msi'
    fileType       = "msi"
 
    softwareName   = 'Microsoft CLI 2.0 for Azure'
    checksum       = 'cf054bf567ea710df4d7319c150cef162a4f2af4193d595f2810531f04370428'
    checksumType   = 'sha256'
    checksum64     = '21ceb34d5ef1cb0072b57d787be59bfa75a463936fafd08d3d4a60d1f726d58e'
    checksum64Type = 'sha256'
 
    silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
    validExitCodes = @(0, 3010, 1641)
}
 
Install-ChocolateyPackage @packageArgs
