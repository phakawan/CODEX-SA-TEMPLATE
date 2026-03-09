param(
  [string]$Root = "."
)

$ErrorActionPreference = "Stop"

$utf8Strict = [System.Text.UTF8Encoding]::new($false, $true)
$failed = @()

$files = Get-ChildItem -Path $Root -Recurse -File -Filter *.md |
  Where-Object { $_.FullName -notmatch "[\\/]\.git[\\/]" }

foreach ($file in $files) {
  $bytes = [System.IO.File]::ReadAllBytes($file.FullName)
  try {
    [void]$utf8Strict.GetString($bytes)
  } catch {
    $failed += $file.FullName
  }
}

if ($failed.Count -gt 0) {
  Write-Host "Invalid UTF-8 markdown files found:" -ForegroundColor Red
  $failed | ForEach-Object { Write-Host " - $_" -ForegroundColor Red }
  exit 1
}

Write-Host "OK: All markdown files are valid UTF-8." -ForegroundColor Green
exit 0
