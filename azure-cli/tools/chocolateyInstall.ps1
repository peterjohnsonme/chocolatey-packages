$ErrorActionPreference = 'Stop';
 
$packageName = 'azure-cli'
 
$packageArgs = @{
    packageName    = $packageName
    url            = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.80.0.msi'
    url64          = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.80.0-x64.msi'
    fileType       = "msi"
 
    softwareName   = 'Microsoft CLI 2.0 for Azure'
    checksum       = 'bdd092639d6a3fcc75626b749d2cae842a1ecd99615b9020c636c36b03b1919e'
    checksumType   = 'sha256'
    checksum64     = 'ab9d66e7d8537401d5bd734086daf80f60a9b7fe1ace9cb78470741e7bbaccf5'
    checksum64Type = 'sha256'
 
    silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
    validExitCodes = @(0, 3010, 1641)
}
 
Install-ChocolateyPackage @packageArgs
