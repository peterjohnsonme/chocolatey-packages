$ErrorActionPreference = 'Stop';

$packageName= 'azure-documentdb-data-migration-tool'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://cosmosdbtools.blob.core.windows.net/datamigrationtool/2019.09.23-1.8.3/dt1.8.3.zip'

$checksum     = 'f594b2478b0904a7aa8022db872d0d66480c4fb1'
$checksumType = 'sha1'

Install-ChocolateyZipPackage $packageName $url $toolsDir -checksum $checksum -checksumType $checksumType