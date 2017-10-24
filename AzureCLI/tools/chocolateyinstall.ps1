$ErrorActionPreference = 'Stop';

$packageName= 'azure-cli'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://azurecliprod.blob.core.windows.net/msi/azure-cli-2.0.20.msi'

$packageArgs = @{
  packageName   = $packageName
  url      		= $url
  fileType      = "msi"

  softwareName  = 'Microsoft CLI 2.0 for Azure'
  checksum      = '3bde3b6ee18c7905864fe5d05b72534460881091'
  checksumType  = 'sha1'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`"" 
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs