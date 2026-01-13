$ErrorActionPreference = 'Stop';
 
$packageName = 'azure-cli'
 
$packageArgs = @{
    packageName    = $packageName
    url            = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.82.0.msi'
    url64          = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.82.0-x64.msi'
    fileType       = "msi"
 
    softwareName   = 'Microsoft CLI 2.0 for Azure'
    checksum       = '2ea47bfae3496ee6ba11af7d40bdf9afb393f2204952ed26416bcfe315df7d03'
    checksumType   = 'sha256'
    checksum64     = 'ce7d29613602c6248e0b9d8a19fc2a1f8b3cad53faab2649fd2ac53eb8e0f338'
    checksum64Type = 'sha256'
 
    silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
    validExitCodes = @(0, 3010, 1641)
}
 
Install-ChocolateyPackage @packageArgs
