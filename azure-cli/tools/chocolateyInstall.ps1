$ErrorActionPreference = 'Stop';
 
$packageName = 'azure-cli'
 
$packageArgs = @{
    packageName    = $packageName
    url            = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.77.0.msi'
    url64          = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.77.0-x64.msi'
    fileType       = "msi"
 
    softwareName   = 'Microsoft CLI 2.0 for Azure'
    checksum       = '4743ddc48c41d9539bf640bbaaa27381f19d021b5e2bb0e1d37dfd037491c40a'
    checksumType   = 'sha256'
    checksum64     = 'a2beb8fd35995d6476c6c29fb50ef26861384c87409fa5db8e60351c67c98f1b'
    checksum64Type = 'sha256'
 
    silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
    validExitCodes = @(0, 3010, 1641)
}
 
Install-ChocolateyPackage @packageArgs
