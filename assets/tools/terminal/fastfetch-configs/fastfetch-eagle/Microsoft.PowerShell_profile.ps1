# Eagle Fastfetch startup
$eagleFastfetchRoot = 'Your Path'
$eagleFastfetchConfig = Join-Path $eagleFastfetchRoot 'config.jsonc'

if ((Get-Command fastfetch -ErrorAction SilentlyContinue) -and
    (Test-Path -LiteralPath $eagleFastfetchConfig)) {
    $env:FASTFETCH_EAGLE_ROOT = $eagleFastfetchRoot
    fastfetch --config $eagleFastfetchConfig
}
