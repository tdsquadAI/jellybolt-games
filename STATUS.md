# JellyBolt Games — Project Status
Last updated: 2026-03-21

## Brand Identity
- **Name:** JellyBolt Games (JellyBolt⚡)
- **NEVER mention "Tamir Dresher"** — independent brand
- **Landing page:** `index.html` — 24-game responsive site with affiliate gear section
- **GitHub Pages:** https://jellybolt-games.github.io/jellybolt-games/
- **itch.io:** jellyboltgames.itch.io
- **YouTube:** https://www.youtube.com/channel/UC0roFVTTy1nSW9Zc7DgcsmQ (12 videos)
- **Contact:** tdsquadai@gmail.com
- **Gumroad:** tdsquad.gumroad.com (Game Bundle $4.99)

## Games (25 total)
All games in `games/` — single HTML5 Canvas files (7-16 KB, instant load):

### Published on itch.io (16)
1. **Asteroid Dash** 🚀 — Space Shooter ($1 suggested)
2. **Bolt Breaker** ⚡ — Breakout-style (free)
3. **Bounce Blitz** 🏐 — Hyper-casual arcade (free)
4. **BrainRot Quiz Battle** 🧠 — Trivia/quiz (free)
5. **Card Clash** 🃏 — Card game (free)
6. **Code Conquest** 💻 — Programming-themed (free)
7. **Dungeon Bolt** ⚔️ — Roguelike RPG ($2.99 premium flagship)
8. **Gravity Dash** 🌀 — Physics arcade (free)
9. **Hex Match** 🔷 — Puzzle ($1 suggested)
10. **Light Trail** 💡 — Arcade (free)
11. **Memory Matrix** 🧩 — Memory puzzle (free)
12. **Neon Snake** 🐍 — Classic reimagined ($1 suggested)
13. **Pixel Tower** 🏗️ — Stacking (free)
14. **Rhythm Tap** 🎵 — Rhythm action ($2 suggested)
15. **Space Trader** 🛸 — Trading sim (free)
16. **Word Rush** ⌨️ — Typing game (free)

### Built, pending itch.io upload (9 new)
17. **Color Match** 🎨 — Puzzle (free)
18. **Cube Runner** 🧊 — 3D Runner (free)
19. **Maze Runner** 🏃 — Maze navigation (free)
20. **Planet Defense** 🌍 — Tower Defense (free)
21. **Riddle Master** 🧙 — Brain Teaser (free)
22. **Space Orbit** 🪐 — Space Arcade (free)
23. **Tower Stack** 🏰 — Stacking (free)
24. **Typing Blitz** 💨 — Typing speed (free)
25. **Dungeon Crawler Classic** - Tile-based dungeon crawler with fog of war (free)

### Shared Assets
- `games/shared/monetization.js` (16.8 KB) — Global monetization module
- `games/shared/games-menu.html` — Cross-game navigation
- `games/shared/ads.js` — Ad integration

## Websites & Platforms
| Platform | URL | Status |
|----------|-----|--------|
| JellyBolt Games (org) | jellybolt-games.github.io/jellybolt-games | ✅ Live |
| JellyBolt Games (personal) | tamirdresher.github.io/jellybolt-games | ✅ Live |
| TechAI Explained | techai-explained.github.io/techai-explained | ✅ Live (11ty) |
| Content Empire | tamirdresher.github.io/content-empire | ✅ Live |
| dev.to | dev.to/techaiexplained | ✅ Active |
| itch.io | jellyboltgames.itch.io | ✅ 16 games |
| YouTube | UC0roFVTTy1nSW9Zc7DgcsmQ | ✅ 12 videos |
| Google Play | JellyBolt Games Collection | ✅ Internal testing |
| Gumroad | tdsquad.gumroad.com | ✅ Active |

### Custom Domains (NOT WORKING — need registrar action)
- techai-explained.dev — No DNS records
- content-empire.dev — No DNS records
- jellybolt.dev — No DNS records

## Monetization

### Active
- **itch.io:** jellyboltgames.itch.io — 16 games (8 more pending upload)
- **Gumroad:** tdsquad.gumroad.com — Game Bundle $4.99 + courses
- **Amazon Associates:** Tag `jellybolt-20` configured, gear section on landing page (pending account activation)

### Pending
- **Google AdSense** — Placeholder in all games + landing page
- **BuyMeACoffee** — buymeacoffee.com/jellyboltgames
- **Unity Affiliate** — pending signup
- **JetBrains Affiliate** — pending signup

## Configuration
- `config/affiliates.json` — All affiliate/monetization platform configs (Amazon, Gumroad, itch.io, YouTube)
- `.env.example` — Environment variable template

## GitHub Actions
- `ci.yml` — Validates JSON files + checks required directories
- `pages-deploy.yml` — Deploy to GitHub Pages (org repo)

## Pending Actions
- [ ] Sign up for Amazon Associates (affiliate-program.amazon.com) — tag jellybolt-20 ready
- [ ] Upload 8 new games to itch.io (#48)
- [ ] Register real AdSense publisher ID
- [ ] Set up BuyMeACoffee page
- [ ] Register .dev domains (techai-explained.dev, content-empire.dev, jellybolt.dev)
- [ ] Build dungeon game series (#49)
- [ ] Render remaining video scripts (#51)
- [ ] Publish articles to Dev.to/Hashnode (#52)
- [ ] Set up Gmail API for tdsquadai monitoring (#50)
- [ ] Record Squad for Kids demo videos (NO YouTube without approval)
