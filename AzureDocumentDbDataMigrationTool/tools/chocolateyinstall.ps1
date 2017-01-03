$ErrorActionPreference = 'Stop';

$packageName= 'azure-documentdb-data-migration-tool'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.microsoft.com/download/E/1/4/E143A339-41AE-4E0E-9CC8-911C0B663478/dt-1.7.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE_MSI_OR_MSU'
  url           = $url

  softwareName  = 'Azure Document DB Data Migration Tool*'
  checksum      = '65ccb425cdb83c7f6165546d8e3e83392efa6367'
  checksumType  = 'sha1'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`"" 
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyZipPackage $packageName $url $toolsDir -checksum $checksum -checksumType $checksumType