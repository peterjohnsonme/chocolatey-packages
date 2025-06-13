$ErrorActionPreference = 'Stop';
 
$packageName = 'azure-cli'
 
$packageArgs = @{
    packageName    = $packageName
    url            = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.74.0.msi'
    url64          = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.74.0-x64.msi'
    fileType       = "msi"
 
    softwareName   = 'Microsoft CLI 2.0 for Azure'
    checksum       = '43b148a50cd90bda94058315a320c7bc61d7f56ffdf62d4502f1cde0c37c926a'
    checksumType   = 'sha256'
    checksum64     = 'b6cd0a6d1c279bce4ee9b1eb876216cbf4d44bd0775393d1811ae06554d78bff'
    checksum64Type = 'sha256'
 
    silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
    validExitCodes = @(0, 3010, 1641)
}
 
Install-ChocolateyPackage @packageArgs
