$ErrorActionPreference = 'Stop';
 
$packageName = 'azure-cli'
 
$packageArgs = @{
    packageName    = $packageName
    url            = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.66.0.msi'
    url64          = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.66.0-x64.msi'
    fileType       = "msi"
 
    softwareName   = 'Microsoft CLI 2.0 for Azure'
    checksum       = '6e1dd47ee3eb2480fad5db2f0527c56495e7739be64c825a53110e4684f23578'
    checksumType   = 'sha256'
    checksum64     = '6e75d4381481f516cc0d0dc558ec9a39307b76601fca3646747af5acb9560433'
    checksum64Type = 'sha256'
 
    silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
    validExitCodes = @(0, 3010, 1641)
}
 
Install-ChocolateyPackage @packageArgs
