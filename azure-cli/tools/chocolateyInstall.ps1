$ErrorActionPreference = 'Stop';
 
$packageName = 'azure-cli'
 
$packageArgs = @{
    packageName    = $packageName
    url            = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.62.0.msi'
    url64          = 'https://azcliprod.blob.core.windows.net/msi/azure-cli-2.62.0-x64.msi'
    fileType       = "msi"
 
    softwareName   = 'Microsoft CLI 2.0 for Azure'
    checksum       = '5dbabd893d3876b7fb8c465d77ea1516dabe212d91f4bf7a99fb54f148d44f94'
    checksumType   = 'sha256'
    checksum64     = '4d45742324cea50db46cc923baee24d5dfe5e8e89106c8c49453299bee34e0f6'
    checksum64Type = 'sha256'
 
    silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
    validExitCodes = @(0, 3010, 1641)
}
 
Install-ChocolateyPackage @packageArgs
