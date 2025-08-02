
$scriptPath = Join-Path $PWD "jesusSay.ps1"

if (-not (Test-Path $PROFILE)) {
    New-Item -ItemType File -Path $PROFILE -Force
}

$content = Get-Content $PROFILE -Raw
if ($content -notmatch [regex]::Escape($scriptPath)) {
    Add-Content -Path $PROFILE -Value "`n. '$scriptPath'"
    Write-Host "✅ Function 'jesusSay' added to your PowerShell profile."
} else {
    Write-Host "ℹ️ 'jesusSay' is already added to your profile."
}
