# Re-copies the source documentation into this publish folder.
#
# The single source of truth is the main workspace's docs/ folder
# (..\docs relative to this site). Edit there, then run this script to
# refresh the publishable copy before committing/pushing.
#
# Usage (from anywhere):  pwsh -File .\sync-docs.ps1

$ErrorActionPreference = 'Stop'

$siteDocs   = Join-Path $PSScriptRoot 'docs'
$sourceDocs = Join-Path (Split-Path $PSScriptRoot -Parent) 'docs'

if (-not (Test-Path $sourceDocs)) {
    throw "Source docs folder not found at: $sourceDocs"
}

# Mirror only Markdown files. This deliberately copies ONLY *.md so that
# nothing else from the source tree can leak into the published site.
Write-Host "Syncing *.md from:`n  $sourceDocs`nto:`n  $siteDocs" -ForegroundColor Cyan

# Remove stale .md files in the destination that no longer exist in source.
Get-ChildItem -Path $siteDocs -Filter *.md -File | ForEach-Object {
    $counterpart = Join-Path $sourceDocs $_.Name
    if (-not (Test-Path $counterpart)) {
        Write-Host "  removing stale: $($_.Name)" -ForegroundColor Yellow
        Remove-Item $_.FullName -Force
    }
}

# Copy/overwrite current source files.
Copy-Item -Path (Join-Path $sourceDocs '*.md') -Destination $siteDocs -Force

$count = (Get-ChildItem -Path $siteDocs -Filter *.md -File | Measure-Object).Count
Write-Host "Done. $count markdown files in publish folder." -ForegroundColor Green
Write-Host "Next:" -ForegroundColor Green
Write-Host "  1. git add -A; git commit -m 'Update docs'; git push" -ForegroundColor Green
Write-Host "  2. Wait for the Cloudflare Pages build to finish (site is live)." -ForegroundColor Green
Write-Host "  3. pwsh -File .\submit-indexnow.ps1   # ping Bing/IndexNow to crawl the updates" -ForegroundColor Green
Write-Host "     (or pass -Url '<changed-url>',... to submit only changed pages)" -ForegroundColor Green
