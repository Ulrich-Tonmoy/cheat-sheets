# F-14 Tactical Fastfetch startup
$beetleFastfetchRoot = 'Your Path'
$beetleFastfetchConfig = Join-Path $beetleFastfetchRoot 'config.jsonc'

if ((Get-Command fastfetch -ErrorAction SilentlyContinue) -and
    (Test-Path -LiteralPath $beetleFastfetchConfig)) {
    $env:FASTFETCH_BEETLE_ROOT = $beetleFastfetchRoot
    fastfetch --config $beetleFastfetchConfig
}
