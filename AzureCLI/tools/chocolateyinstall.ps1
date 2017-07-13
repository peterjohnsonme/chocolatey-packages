$ErrorActionPreference = 'Stop';

$packageName= 'azure-cli-windows'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://azurecliprod.blob.core.windows.net/msi/azure-cli-2.0.10.msi'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url

  softwareName  = 'Azure CLI for Windows*'
  checksum      = 'f533f0e78c33cb22b96c058f4056a82140885389'
  checksumType  = 'sha1'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`"" 
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage $packageName $url $toolsDir -checksum $checksum -checksumType $checksumType