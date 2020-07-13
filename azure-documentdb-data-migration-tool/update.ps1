import-module au

$releases = 'https://aka.ms/csdmtool'

function global:au_SearchReplace {
    @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"          = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum32)'"
            "(?i)(^\s*checksumType\s*=\s*)('.*')" = "`$1'$($Latest.ChecksumType32)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -MaximumRedirection 0 -ErrorAction SilentlyContinue

    $url32 = $download_page.Headers.Location
    $version = $url32 -split '-|.zip' | Select-Object -Last 1 -Skip 1

    @{
        URL32   = $url32
        Version = $version
    }
}

update -ChecksumFor 32
