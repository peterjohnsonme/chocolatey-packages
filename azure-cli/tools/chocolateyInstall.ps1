$ErrorActionPreference = 'Stop';
 
$packageName = 'azure-cli'
 
$packageArgs = @{
    packageName    = $packageName
    url            = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.60.0.msi'
    url64          = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.60.0-x64.msi'
    fileType       = "msi"
 
    softwareName   = 'Microsoft CLI 2.0 for Azure'
    checksum       = '78beb31df2184eb2aba7de3c6c7245a4a761f1db6d846af883c1dfbb995a8cb0'
    checksumType   = 'sha256'
    checksum64     = 'd7454d07fe945697e07804eb452581cabe2a5d5a177957e76dc08c1a928c1255'
    checksum64Type = 'sha256'
 
    silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
    validExitCodes = @(0, 3010, 1641)
}
 
Install-ChocolateyPackage @packageArgs
