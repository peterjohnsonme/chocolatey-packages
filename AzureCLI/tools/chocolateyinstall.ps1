$ErrorActionPreference = 'Stop';

$packageName= 'azure-cli'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://azurecliprod.blob.core.windows.net/msi/azure-cli-2.0.23.msi'

$packageArgs = @{
  packageName   = $packageName
  url      		= $url
  fileType      = "msi"

  softwareName  = 'Microsoft CLI 2.0 for Azure'
  checksum      = '791dc8bfe464e51c22b5c2d8927852c48ca4a062'
  checksumType  = 'sha1'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`"" 
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs