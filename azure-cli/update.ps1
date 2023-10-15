import-module au

$releases = 'https://aka.ms/installazurecliwindows'
$releases64 = 'https://aka.ms/installazurecliwindowsx64'

function global:au_SearchReplace {
    @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"          = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*url64\s*=\s*)('.*')"          = "`$1'$($Latest.URL64)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum32)'"
            "(?i)(^\s*checksumType\s*=\s*)('.*')" = "`$1'$($Latest.ChecksumType32)'"
            "(?i)(^\s*checksum64\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum64)'"
            "(?i)(^\s*checksum64Type\s*=\s*)('.*')" = "`$1'$($Latest.ChecksumType64)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -MaximumRedirection 0 -ErrorAction SilentlyContinue
    $download_page64 = Invoke-WebRequest -Uri $releases64 -MaximumRedirection 0 -ErrorAction SilentlyContinue

    $url32 = $download_page.Headers.Location
    $url64 = $download_page64.Headers.Location
    $version = $url32 -split '-|.msi' | Select-Object -Last 1 -Skip 1

    @{
        URL32   = $url32
        URL64   = $url64
        Version = $version
    }
}

update -ChecksumFor all
