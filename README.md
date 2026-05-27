# Workday Admin Guide — Public Docs Site

Static site that publishes the `docs/` reference material to GitHub Pages so a
Microsoft Copilot agent (public-website knowledge source) can ground on it.

Built with [MkDocs](https://www.mkdocs.org/) + [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/).

> **Source of truth:** the main workspace's `..\docs` folder. Edit there, then run
> `sync-docs.ps1` to refresh this publishable copy before pushing. This folder
> contains **only** publishable Markdown — never copy `CLAUDE.md`, `memory/`, or
> other internal files here.

---

## What's in here

| File | Purpose |
|------|---------|
| `mkdocs.yml` | Site config + navigation. **Set `site_url` before first deploy.** |
| `docs/` | Copy of the 56 Markdown files to publish |
| `requirements.txt` | Build dependency (`mkdocs-material`) |
| `.github/workflows/deploy.yml` | Builds and publishes on every push to `main` |
| `sync-docs.ps1` | Re-copies `..\docs\*.md` into `docs/` |
| `.gitignore` | Excludes build output |

---

## One-time setup

1. **Create a GitHub repository** (e.g. `workday-docs-site`).
   - Can be **public** or **private**. Either way the *published Pages site* is
     public — that public URL is what Copilot/Bing needs. (A private repo with a
     public Pages site is a fine, common setup.)

2. **Set `site_url` in `mkdocs.yml`** to your Pages URL:
   ```
   site_url: https://<github-username>.github.io/workday-docs-site/
   ```
   This makes `sitemap.xml` use correct absolute URLs — important for Bing.

3. **Push this folder to the repo:**
   ```powershell
   cd "workday-docs-site"
   git init
   git branch -M main
   git remote add origin https://github.com/<github-username>/workday-docs-site.git
   git add -A
   git commit -m "Initial docs site"
   git push -u origin main
   ```

4. The **Deploy docs site** Action runs automatically and pushes the built HTML
   to a `gh-pages` branch.

5. **Enable Pages:** repo **Settings → Pages → Build and deployment → Source =
   Deploy from a branch → Branch = `gh-pages` / `(root)`** → Save.
   Your site goes live at the `site_url` above within a minute or two.

---

## Updating the docs later

```powershell
cd "workday-docs-site"
pwsh -File .\sync-docs.ps1      # refresh from ..\docs
git add -A
git commit -m "Update docs"
git push                        # Action rebuilds + redeploys
```

---

## Optional: preview locally

Requires Python (not currently installed on this machine):

```powershell
pip install -r requirements.txt
mkdocs serve        # http://127.0.0.1:8000
```

The cloud build does **not** need local Python — this is only for previewing.

---

## Wiring it into Copilot (public-website knowledge)

Copilot's public-website source grounds on the **Bing index**, not a live crawl.
So after the site is live:

1. **Verify the site in [Bing Webmaster Tools](https://www.bing.com/webmasters)**
   and **submit your sitemap**: `https://<...>/sitemap.xml` (MkDocs generates it
   automatically). This gets the pages indexed in hours/days instead of weeks.
2. In your Copilot agent, add a **public website** knowledge source pointing at
   the **site root URL** (not 56 individual pages) so it can use all subpages.
3. Re-test grounding a day or two after submitting, once Bing has crawled it.

> Note: `docs/microsoft_teams_slack_faq.md` includes Slack content in its source.
> If this site is meant to reflect a Teams-only stance, edit that file in the
> source `..\docs` before syncing.
