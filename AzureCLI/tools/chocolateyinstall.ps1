$ErrorActionPreference = 'Stop';

$packageName= 'azure-cli'
$url        = 'https://azurecliprod.azureedge.net/msi/azure-cli-2.0.49.msi'

$packageArgs = @{
  packageName   = $packageName
  url      		  = $url
  fileType      = "msi"

  softwareName  = 'Microsoft CLI 2.0 for Azure'
  checksum      = 'f39a65c02a89e46f507004fdfe14729da4f03232'
  checksumType  = 'sha1'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`"" 
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs