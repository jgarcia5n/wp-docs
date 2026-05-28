# Submits the live site's URLs to IndexNow (Bing + partner engines) to
# accelerate crawling/indexing after a deploy.
#
# IMPORTANT: run this AFTER the site is live on Cloudflare Pages -- i.e.
# after `git push` AND the Pages build has finished. IndexNow tells Bing
# to crawl these URLs, so the new content must already be deployed, or
# Bing will just re-crawl the old version.
#
# Usage (from this folder):
#   pwsh -File .\submit-indexnow.ps1
#       -> submits ALL URLs in the live sitemap.xml
#
#   pwsh -File .\submit-indexnow.ps1 -Url 'https://wp-docs-56b.pages.dev/glossary/','https://wp-docs-56b.pages.dev/hcm-staffing/'
#       -> submits only the specific (changed) URLs you list
#          Prefer this for routine updates -- re-blasting all URLs every
#          time can trip IndexNow rate limits (HTTP 429).

[CmdletBinding()]
param(
    [string[]] $Url
)

$ErrorActionPreference = 'Stop'

$siteHost    = 'wp-docs-56b.pages.dev'
$key         = '8582c1fd12394d999625297b1be8b04d'
$keyLocation = "https://$siteHost/$key.txt"
$endpoint    = 'https://api.indexnow.org/indexnow'

# 1. Verify the key file is actually live; IndexNow validates it on their end.
try {
    $kf = Invoke-WebRequest -Uri $keyLocation -UseBasicParsing
    if ($kf.Content.Trim() -ne $key) {
        throw "Key file content mismatch. Expected [$key], got [$($kf.Content.Trim())]."
    }
    Write-Host "Key file OK: $keyLocation" -ForegroundColor Green
} catch {
    throw "Key file not reachable at $keyLocation -- is the site deployed? $($_.Exception.Message)"
}

# 2. Build the URL list: explicit -Url args, else every <loc> in the live sitemap.
if ($Url) {
    $urls = @($Url)
    Write-Host "Submitting $($urls.Count) explicitly provided URL(s)." -ForegroundColor Cyan
} else {
    [xml]$xml = (Invoke-WebRequest -Uri "https://$siteHost/sitemap.xml" -UseBasicParsing).Content
    $urls = @($xml.urlset.url.loc)
    Write-Host "Submitting all $($urls.Count) URL(s) from sitemap.xml." -ForegroundColor Cyan
}

if (-not $urls -or $urls.Count -eq 0) {
    throw "No URLs to submit."
}

# 3. POST the batch to IndexNow (one submission is shared across Bing + partners).
$body = @{
    host        = $siteHost
    key         = $key
    keyLocation = $keyLocation
    urlList     = $urls
} | ConvertTo-Json

try {
    $resp = Invoke-WebRequest -Uri $endpoint -Method Post `
        -ContentType 'application/json; charset=utf-8' -Body $body -UseBasicParsing
    # 200 = accepted; 202 = accepted, key validation pending. Both are success.
    Write-Host "IndexNow: HTTP $([int]$resp.StatusCode) $($resp.StatusDescription) -- $($urls.Count) URL(s) submitted." -ForegroundColor Green
} catch {
    $status = if ($_.Exception.Response) { [int]$_.Exception.Response.StatusCode } else { '?' }
    Write-Host "IndexNow submit FAILED: HTTP $status -- $($_.Exception.Message)" -ForegroundColor Red
    if ($_.Exception.Response) {
        $sr = New-Object System.IO.StreamReader($_.Exception.Response.GetResponseStream())
        Write-Host "Response body: $($sr.ReadToEnd())"
    }
    exit 1
}
