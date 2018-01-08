$ErrorActionPreference = 'Stop';

$packageName= 'azure-cli'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://azurecliprod.blob.core.windows.net/msi/azure-cli-2.0.24.msi'

$packageArgs = @{
  packageName   = $packageName
  url      		= $url
  fileType      = "msi"

  softwareName  = 'Microsoft CLI 2.0 for Azure'
  checksum      = 'e44ab531694317991bb516feef625ed059b0f34b'
  checksumType  = 'sha1'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`"" 
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs