$ErrorActionPreference = 'Stop';

$packageName= 'azure-cli'
$url        = 'https://azurecliprod.azureedge.net/msi/azure-cli-2.0.50.msi'

$packageArgs = @{
  packageName   = $packageName
  url      		  = $url
  fileType      = "msi"

  softwareName  = 'Microsoft CLI 2.0 for Azure'
  checksum      = 'a93d065ced011e7eb59bdb29c8ce5f2f7fc7221c'
  checksumType  = 'sha1'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`"" 
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs