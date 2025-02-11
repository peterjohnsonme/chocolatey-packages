$ErrorActionPreference = 'Stop';
 
$packageName = 'azure-cli'
 
$packageArgs = @{
    packageName    = $packageName
    url            = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.69.0.msi'
    url64          = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.69.0-x64.msi'
    fileType       = "msi"
 
    softwareName   = 'Microsoft CLI 2.0 for Azure'
    checksum       = '9aec25a2dee61060c69bebb04ac2e353889ead6b5a6b58d20f3108383ae89afb'
    checksumType   = 'sha256'
    checksum64     = '509e1e42184b36649a97256cc9f059cd5efa95ae2c7677411becac9e1870d03d'
    checksum64Type = 'sha256'
 
    silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
    validExitCodes = @(0, 3010, 1641)
}
 
Install-ChocolateyPackage @packageArgs
