# Copie le build PWA dans jaaykat-api/public pour la démo same-origin
$ErrorActionPreference = "Stop"
$root = Split-Path -Parent $PSScriptRoot
Push-Location "$root\jaaykat-web"
pnpm build
Pop-Location
$dest = "$root\jaaykat-api\public"
if (Test-Path $dest) { Remove-Item -Recurse -Force "$dest\*" -ErrorAction SilentlyContinue }
New-Item -ItemType Directory -Force -Path $dest | Out-Null
Copy-Item -Recurse -Force "$root\jaaykat-web\dist\*" $dest
Write-Host "OK: jaaykat-web/dist → jaaykat-api/public"
