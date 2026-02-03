$ErrorActionPreference = 'Stop';
 
$packageName = 'azure-cli'
 
$packageArgs = @{
    packageName    = $packageName
    url            = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.83.0.msi'
    url64          = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.83.0-x64.msi'
    fileType       = "msi"
 
    softwareName   = 'Microsoft CLI 2.0 for Azure'
    checksum       = '2b5dccfe9a7522514f032bb346178b5c75130b854d17e70e5a45c31b2613d951'
    checksumType   = 'sha256'
    checksum64     = '73909c7b05adbfb9f9d5a970ea5ee35908ee97fead25769d102c72271a5e86eb'
    checksum64Type = 'sha256'
 
    silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
    validExitCodes = @(0, 3010, 1641)
}
 
Install-ChocolateyPackage @packageArgs
