$ErrorActionPreference = 'Stop';

$packageName= 'azure-cli'
$url        = 'https://azurecliprod.azureedge.net/msi/azure-cli-2.0.31.msi'

$packageArgs = @{
  packageName   = $packageName
  url      		  = $url
  fileType      = "msi"

  softwareName  = 'Microsoft CLI 2.0 for Azure'
  checksum      = '5c1fd6ce80ebe32077633e5076eda35a2f20c0b6'
  checksumType  = 'sha1'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`"" 
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs