# Eagle Fastfetch startup
$wolfFastfetchRoot = 'Your Path'
$wolfFastfetchConfig = Join-Path $wolfFastfetchRoot 'config.jsonc'

if ((Get-Command fastfetch -ErrorAction SilentlyContinue) -and
    (Test-Path -LiteralPath $wolfFastfetchConfig)) {
    $env:FASTFETCH_WOLF_ROOT = $wolfFastfetchRoot
    fastfetch --config $wolfFastfetchConfig
}
