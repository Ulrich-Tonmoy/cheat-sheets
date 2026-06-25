$env:FASTFETCH_F14_ROOT = $PSScriptRoot
fastfetch --config (Join-Path $PSScriptRoot 'config.jsonc')
