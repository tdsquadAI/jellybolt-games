## Content Empire — Agent Instructions (JellyBolt Games)

### First-Time Machine Setup
1. Check if this machine is already set up for the JellyBolt Games brand
2. Read STATUS.md for full project context before doing any work

### Key Files to Read
- STATUS.md — Full project status, what's built, what's pending
- BRAND-PLAN.md — Revenue strategy, distribution channels, content calendar

### Core Rules
- NEVER mention "Tamir Dresher" — this brand is independent
- All content in English AND Hebrew
- Read STATUS.md before doing any work
- Check GitHub issues for tracked tasks

### Session History
- See techai-explained repo SESSION-LOG-2026-03-19-20.md for the full March 19-20 launch session log
- This repo handles: 16 HTML5 games on itch.io (jellyboltgames.itch.io)
- Games: asteroid-dash, bolt-breaker, bounce-blitz, brainrot-quiz-battle, card-clash, code-conquest, dungeon-bolt, gravity-dash, hex-match, light-trail, memory-matrix, neon-snake, pixel-tower, rhythm-tap, space-trader, word-rush
- 7 monetized ($1-$2.99), flagship Dungeon Bolt $2.99
- Game Bundle on Gumroad: $4.99 (ID: qtmyl)
- Email: jellybolt@sharebot.net (stored as BRAND_EMAIL secret)


## GitHub Organization

This repo is forked into **github.com/jellybolt-games/jellybolt-games** — the brand's independent org.

**Remotes:**
- `origin` → tamirdresher/jellybolt-games (personal, legacy)
- `org` → jellybolt-games/jellybolt-games (org, primary going forward)

**Push to BOTH remotes:** `git push origin main && git push org main`

**GitHub Actions Secrets (on org repo):**
- `BRAND_EMAIL` — jellybolt@sharebot.net
- `BRAND_NAME` — JellyBolt Games
- `GUMROAD_PRODUCT_IDS` — Gumroad product IDs
- `GMAIL_ADDRESS` — Gmail for platform signups

**Pages URL:** jellybolt-games.github.io/jellybolt-games

**⚠️ NEVER reference 'tamirdresher' or 'Tamir Dresher' in any public-facing content.**

## Credential Access (Cross-Machine)

Config is stored as **GitHub Variables** (readable) and passwords as **GitHub Secrets** (write-only).

**Reading variables (any machine with gh auth):**
```
gh variable list --repo {org}/{repo}
gh variable get BRAND_EMAIL --repo {org}/{repo}
```

**In GitHub Actions workflows:**
- Variables: `${{ vars.BRAND_NAME }}`
- Secrets: `${{ secrets.MAIL_TM_PASSWORD }}`

**Quick fetch all config for this brand:**
```
gh variable list --repo {org}/{repo} --json name,value
```

**Never commit credentials to the repo.** Use variables/secrets for all config.

