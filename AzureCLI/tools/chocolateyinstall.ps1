$ErrorActionPreference = 'Stop';

$packageName= 'azure-cli'
$url        = 'https://azurecliprod.azureedge.net/msi/azure-cli-2.0.38.msi'

$packageArgs = @{
  packageName   = $packageName
  url      		  = $url
  fileType      = "msi"

  softwareName  = 'Microsoft CLI 2.0 for Azure'
  checksum      = '754fbea085df5e73d7f83c65ae3543eb1130aff5'
  checksumType  = 'sha1'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`"" 
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs