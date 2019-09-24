$ErrorActionPreference = 'Stop';
 
$packageName = 'azure-cli'
 
$packageArgs = @{
    packageName    = $packageName
    url            = 'https://azurecliprod.blob.core.windows.net/msi/azure-cli-2.0.74.msi'
    fileType       = "msi"
 
    softwareName   = 'Microsoft CLI 2.0 for Azure'
    checksum       = '0d8d1591443670c9aff0f93a322c07fb956bad4d3893cfc57ccd4fbf433c3dd2'
    checksumType   = 'sha256'
 
    silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
    validExitCodes = @(0, 3010, 1641)
}
 
Install-ChocolateyPackage @packageArgs
