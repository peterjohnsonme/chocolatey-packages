$ErrorActionPreference = 'Stop';
 
$packageName = 'azure-cli'
 
$packageArgs = @{
    packageName    = $packageName
    url            = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.57.0.msi'
    url64          = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.57.0-x64.msi'
    fileType       = "msi"
 
    softwareName   = 'Microsoft CLI 2.0 for Azure'
    checksum       = '5e9d7b5ebd3023728d38930c0b827e28aff6d0c2387fe96064ea0af5417f624f'
    checksumType   = 'sha256'
    checksum64     = '1371945e4103b7635c86bdb18fc7bcc617e4c01d0ac0645029a15926041326a3'
    checksum64Type = 'sha256'
 
    silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
    validExitCodes = @(0, 3010, 1641)
}
 
Install-ChocolateyPackage @packageArgs
