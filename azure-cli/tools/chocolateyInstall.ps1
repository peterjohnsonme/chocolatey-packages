$ErrorActionPreference = 'Stop';
 
$packageName = 'azure-cli'
 
$packageArgs = @{
    packageName    = $packageName
    url            = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.78.0.msi'
    url64          = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.78.0-x64.msi'
    fileType       = "msi"
 
    softwareName   = 'Microsoft CLI 2.0 for Azure'
    checksum       = '72cfa1fbf066e41dbc71887f8d566f373c4927fd8c44fd75f4a886090d21fcd6'
    checksumType   = 'sha256'
    checksum64     = '07625cc9b4e7e4c05c4b0ddf012e20dc27f4efb0953cc064cd52df6fa299560a'
    checksum64Type = 'sha256'
 
    silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
    validExitCodes = @(0, 3010, 1641)
}
 
Install-ChocolateyPackage @packageArgs
