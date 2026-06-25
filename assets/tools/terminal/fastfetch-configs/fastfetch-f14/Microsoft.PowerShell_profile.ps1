# F-14 Tactical Fastfetch startup
$f14FastfetchRoot = 'Your Path'
$f14FastfetchConfig = Join-Path $f14FastfetchRoot 'config.jsonc'

if ((Get-Command fastfetch -ErrorAction SilentlyContinue) -and
    (Test-Path -LiteralPath $f14FastfetchConfig)) {
    $env:FASTFETCH_F14_ROOT = $f14FastfetchRoot
    fastfetch --config $f14FastfetchConfig
}
