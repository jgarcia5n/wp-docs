# Workday Admin Guide — Public Docs Site

Static site that publishes the `docs/` reference material so a Microsoft Copilot
agent (public-website knowledge source) can ground on it.

- **Build:** [MkDocs](https://www.mkdocs.org/) + [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/)
- **Host:** [Cloudflare Pages](https://pages.cloudflare.com/), building from a **private** GitHub repo
- **Result:** source repo is private/non-searchable; the published website is public (required so Bing/Copilot can read it)

> **Source of truth:** the main workspace's `..\docs` folder. Edit there, run
> `sync-docs.ps1` to refresh this publishable copy, then commit/push. This folder
> contains **only** publishable Markdown — never copy `CLAUDE.md`, `memory/`, or
> other internal files here.

---

## What's in here

| File | Purpose |
|------|---------|
| `mkdocs.yml` | Site config + navigation. **Set `site_url` to your real `.pages.dev` URL.** |
| `docs/` | Copy of the 56 Markdown files to publish |
| `requirements.txt` | Build dependency (`mkdocs-material`) — Cloudflare installs this |
| `sync-docs.ps1` | Re-copies `..\docs\*.md` into `docs/` |
| `.gitignore` | Excludes build output (`site/`) |

There is **no** GitHub Actions workflow — Cloudflare Pages runs the build itself.

---

## One-time setup

### 1. Make the GitHub repo private and push this scaffold

The repo (`hsdude/wd-docs`) currently holds an earlier file upload at the root.
This local scaffold has the correct structure (docs under `docs/`, plus config).

- On GitHub: **repo → Settings → General → Danger Zone → Change visibility → Make private.**
- Then push this folder, overwriting the redundant upload:
  ```powershell
  cd "workday-docs-site"
  git push -u --force-with-lease origin main
  ```

### 2. Create the Cloudflare Pages project

1. Cloudflare dashboard → **Workers & Pages → Create → Pages → Connect to Git.**
2. Authorize Cloudflare's GitHub app for the **private** `wd-docs` repo.
3. Build settings:
   | Setting | Value |
   |---|---|
   | Framework preset | None |
   | Build command | `pip install -r requirements.txt && mkdocs build` |
   | Build output directory | `site` |
   | Root directory | *(leave blank — repo root)* |
4. **Environment variables** → add `PYTHON_VERSION` = `3.12`
   (Cloudflare's default Python is older and won't build current MkDocs Material.)
5. **Save and Deploy.** Site goes live at `https://<project-name>.pages.dev/`.

### 3. Point `site_url` at the live URL

Edit `mkdocs.yml` → `site_url:` to match your actual `.pages.dev` domain (or custom
domain), then commit + push so `sitemap.xml` carries correct absolute URLs.

---

## Updating the docs later

```powershell
cd "workday-docs-site"
pwsh -File .\sync-docs.ps1      # refresh from ..\docs
git add -A
git commit -m "Update docs"
git push                        # Cloudflare auto-rebuilds + redeploys
```

---

## Optional: preview locally

Requires Python (not currently installed on this machine):

```powershell
pip install -r requirements.txt
mkdocs serve        # http://127.0.0.1:8000
```

The Cloudflare build does **not** need local Python — this is only for previewing.

---

## Wiring it into Copilot (public-website knowledge)

Copilot's public-website source grounds on the **Bing index**, not a live crawl.
So after the site is live:

1. **Verify the site in [Bing Webmaster Tools](https://www.bing.com/webmasters)**
   and **submit your sitemap**: `https://<your-domain>/sitemap.xml` (MkDocs
   generates it automatically). This gets pages indexed in hours/days, not weeks.
2. In your Copilot agent, add a **public website** knowledge source pointing at
   the **site root URL** (not 56 individual pages) so it can use all subpages.
3. Re-test grounding a day or two later, once Bing has crawled it.

> Note: `docs/microsoft_teams_slack_faq.md` includes Slack content in its source.
> If this site should reflect a Teams-only stance, edit that file in the source
> `..\docs` before syncing.
