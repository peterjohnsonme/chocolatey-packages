$ErrorActionPreference = 'Stop';

$packageName= 'azure-cli'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$file       = Join-Path $toolsDir 'azure-cli-2.0.28.msi'

$packageArgs = @{
  packageName   = $packageName
  file      		= $file
  fileType      = "msi"

  softwareName  = 'Microsoft CLI 2.0 for Azure'
  checksum      = '1eba80789ec66cb0731961f8ec8eb17a1884a9e3'
  checksumType  = 'sha1'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`"" 
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyInstallPackage @packageArgs