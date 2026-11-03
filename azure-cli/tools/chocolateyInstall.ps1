$ErrorActionPreference = 'Stop';
 
$packageName = 'azure-cli'
 
$packageArgs = @{
    packageName    = $packageName
    url            = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.92.0.msi'
    url64          = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.92.0-x64.msi'
    fileType       = "msi"
 
    softwareName   = 'Microsoft CLI 2.0 for Azure'
    checksum       = '0d5f0250ad79ac635e6c66eee7f5d850bd801971f3f554e1b991e782a1b05c7c'
    checksumType   = 'sha256'
    checksum64     = 'adae8646ce0e3b322e33229268c686703560ba865d4fd8546154d4c940b289e8'
    checksum64Type = 'sha256'
 
    silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
    validExitCodes = @(0, 3010, 1641)
}
 
Install-ChocolateyPackage @packageArgs
