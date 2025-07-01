$ErrorActionPreference = 'Stop';
 
$packageName = 'azure-cli'
 
$packageArgs = @{
    packageName    = $packageName
    url            = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.75.0.msi'
    url64          = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.75.0-x64.msi'
    fileType       = "msi"
 
    softwareName   = 'Microsoft CLI 2.0 for Azure'
    checksum       = 'a1db175c23468d6be3a0089c261024bb6810334054ecb8ba993f8d1038ae0f96'
    checksumType   = 'sha256'
    checksum64     = 'f0a0f384bc838df38c8513bf593d8973fb7095177079b650ce1c6317f6c0895a'
    checksum64Type = 'sha256'
 
    silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
    validExitCodes = @(0, 3010, 1641)
}
 
Install-ChocolateyPackage @packageArgs
