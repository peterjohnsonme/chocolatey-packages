$ErrorActionPreference = 'Stop';

$packageName= 'azure-documentdb-data-migration-tool'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/Azure/azure-documentdb-datamigrationtool/releases/download/1.8.3/azure-documentdb-datamigrationtool-1.8.3.zip'

$checksum     = '329694305994F95FB4A877F7D769D93F4900A3E6'
$checksumType = 'sha1'

Install-ChocolateyZipPackage $packageName $url $toolsDir -checksum $checksum -checksumType $checksumType
