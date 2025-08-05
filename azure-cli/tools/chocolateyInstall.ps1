$ErrorActionPreference = 'Stop';
 
$packageName = 'azure-cli'
 
$packageArgs = @{
    packageName    = $packageName
    url            = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.76.0.msi'
    url64          = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.76.0-x64.msi'
    fileType       = "msi"
 
    softwareName   = 'Microsoft CLI 2.0 for Azure'
    checksum       = 'ae3dabf57ed654cb4430015ca6b9d553538f90628cedc9cea443bd06c619e112'
    checksumType   = 'sha256'
    checksum64     = '4d5a09bcca9c61881f73f03acf5b29f0993580f95d4d99421a008edb4abda8df'
    checksum64Type = 'sha256'
 
    silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
    validExitCodes = @(0, 3010, 1641)
}
 
Install-ChocolateyPackage @packageArgs
