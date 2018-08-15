$ErrorActionPreference = 'Stop';

$packageName= 'azure-cli'
$url        = 'https://azurecliprod.azureedge.net/msi/azure-cli-2.0.44.2.msi'

$packageArgs = @{
  packageName   = $packageName
  url      		  = $url
  fileType      = "msi"

  softwareName  = 'Microsoft CLI 2.0 for Azure'
  checksum      = '3fe233099661e87784a0750760044d37c4893120'
  checksumType  = 'sha1'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`"" 
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs