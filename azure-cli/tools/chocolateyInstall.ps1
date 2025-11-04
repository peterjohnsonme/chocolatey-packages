$ErrorActionPreference = 'Stop';
 
$packageName = 'azure-cli'
 
$packageArgs = @{
    packageName    = $packageName
    url            = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.79.0.msi'
    url64          = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.79.0-x64.msi'
    fileType       = "msi"
 
    softwareName   = 'Microsoft CLI 2.0 for Azure'
    checksum       = 'f970562c9dc126d7945e1e9debbe49854db1da733fd88f061a3587876a644af1'
    checksumType   = 'sha256'
    checksum64     = '9f2ebbc4c57efddb9ddfc8d73cb50943cda14de01a9f8dc1c4d893abe371004f'
    checksum64Type = 'sha256'
 
    silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
    validExitCodes = @(0, 3010, 1641)
}
 
Install-ChocolateyPackage @packageArgs
