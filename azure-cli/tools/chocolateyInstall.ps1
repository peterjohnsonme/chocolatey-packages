$ErrorActionPreference = 'Stop';
 
$packageName = 'azure-cli'
 
$packageArgs = @{
    packageName    = $packageName
    url            = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.72.0.msi'
    url64          = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.72.0-x64.msi'
    fileType       = "msi"
 
    softwareName   = 'Microsoft CLI 2.0 for Azure'
    checksum       = 'e4d46c35901c20fa9a3808abe866ae6b0d8d40c27ddc597cb714addc9cdff4ac'
    checksumType   = 'sha256'
    checksum64     = 'b0f9a675890329352e2fc349e28265cfa5b9d303d2d20a100a5d49c57eb8530a'
    checksum64Type = 'sha256'
 
    silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
    validExitCodes = @(0, 3010, 1641)
}
 
Install-ChocolateyPackage @packageArgs
