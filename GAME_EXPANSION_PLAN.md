# ⚡ JellyBolt Games — Studio Expansion Roadmap

<div align="center">

```
     ⚡ J E L L Y B O L T   G A M E S ⚡
         Fun hits different.™
```

**Publisher:** JellyBolt Games · **Contact:** tdsquadai@gmail.com · **Web:** [jellyboltgames.itch.io](https://jellyboltgames.itch.io)

</div>

> **Version:** 2.0 · **Date:** July 2026
> **Status:** 🟢 ACTIVE — Phase 1 in progress

---

## 🎯 Studio Vision

JellyBolt Games is an indie **app publisher** — games AND utilities. We build **instant-play mobile games** and **lightweight utility tools**, all under the same neon-lit brand. Every app loads in under a second, looks like it was dipped in liquid lightning, and earns ad revenue while it sleeps.

This roadmap takes us from **3 Play Store apps** to a **full publisher portfolio** of 20+ titles — games for engagement, utilities for steady passive ad income.

### Brand DNA

| Element | Value |
|---------|-------|
| **Publisher** | JellyBolt Games |
| **Visual identity** | Dark backgrounds (`#050510`), neon green accent (`#00ff88`), electric cyan (`#58a6ff`), gold highlights (`#ffcc00`) |
| **Icon / motif** | ⚡ Lightning bolt |
| **Tagline** | "Fun hits different." |
| **Voice** | Energetic, Gen-Z friendly, no-BS. Think "your friend who found the best game and is screaming about it" |
| **App naming** | Game name as title (e.g., "Dungeon Bolt", "BrainRot Quiz Battle"). Publisher attribution via Play Store developer profile |
| **Ethical stance** | No loot boxes, no pay-to-win, no energy gates. Players pay for expression, never for advantage. |

---

## 📊 Current Portfolio

| App | Package | Play Store Status | Category |
|-----|---------|-------------------|----------|
| ⚡ JellyBolt Games - Arcade Collection | `com.jellybolt.games` | Closed testing (active) | `GAME_CASUAL` |
| 🧠 BrainRot Quiz Battle | `com.jellybolt.brainrotquiz` | Internal testing | `GAME_TRIVIA` |
| ⚔️ Code Conquest | `com.jellybolt.codeconquest` | Internal testing | `GAME_BOARD` |

**Full catalog:** 40 games across arcade, puzzle, strategy, RPG, shooter, rhythm, and simulation genres. All vanilla HTML5 Canvas + JS, 7–65 KB per game, playable in-browser or natively via Android WebView.

---

## 1. ⚡ Standalone App Expansion — Top 8

We're pulling the best games out of the collection and shipping them as standalone Play Store apps. Each one gets its own store listing, screenshots, icon, and Play Store category — built to rank independently.

### 🥇 Tier 1 — Flagships (Ship First)

| # | Title | Package | Category | Why It's a Standalone |
|---|-------|---------|----------|----------------------|
| 1 | **Dungeon Bolt** | `com.jellybolt.dungeonbolt` | `GAME_ADVENTURE` | ⚡ Our flagship. 5-floor roguelite with 11 enemy types, loot drops, shops, bosses, and permadeath. This IS the game that justifies the studio name. Premium-tier depth in a 30 KB package. |
| 2 | **Quest RPG** | `com.jellybolt.questrpg` | `GAME_ROLE_PLAYING` | Full RPG with character progression, quests, and combat. Largest codebase (44 KB) = deepest content. RPGs drive the highest session times on mobile. |
| 3 | **Escape Room** | `com.jellybolt.escaperoom` | `GAME_PUZZLE` | 5 interconnected rooms, 30+ puzzles, inventory system, 4 endings. Puzzle-adventure is a proven Play Store category (The Room series, Escape games). |

### 🥈 Tier 2 — High Engagement (Ship Second)

| # | Title | Package | Category | Why It's a Standalone |
|---|-------|---------|----------|----------------------|
| 4 | **Block Storm** | `com.jellybolt.blockstorm` | `GAME_PUZZLE` | Tetris-like mechanics = instant recognition. Everyone knows how to play. Infinite replay. 40 KB of pure dopamine. |
| 5 | **Merge Master** | `com.jellybolt.mergemaster` | `GAME_CASUAL` | Our biggest game (67 KB). Merge mechanics are clinically proven addiction loops. Perfect for future coin-sink monetization. |
| 6 | **Battle Royale** | `com.jellybolt.battleroyale` | `GAME_ACTION` | Genre recognition alone drives downloads. Complex multi-system gameplay. Great ASO keywords. |

### 🥉 Tier 3 — Niche Gems (Ship Third)

| # | Title | Package | Category | Why It's a Standalone |
|---|-------|---------|----------|----------------------|
| 7 | **Tower Defense** | `com.jellybolt.towerdefense` | `GAME_STRATEGY` | TD has a dedicated fanbase that searches specifically for it. Strategic depth, easy to extend with new maps/towers. |
| 8 | **Bubble Pop** | `com.jellybolt.bubblepop` | `GAME_CASUAL` | Second-largest game (45 KB). Bubble shooter is the #1 casual genre on mobile. Pure mass-market appeal. |

### Full Studio Lineup (After Expansion)

```
⚡ JellyBolt Games — Play Store Portfolio

 LIVE NOW                           NEW — PHASE 1               NEW — PHASE 3
 ─────────                          ──────────────               ──────────────
 🎮 JellyBolt Collection            ⚔️ Dungeon Bolt              🧱 Block Storm
 🧠 BrainRot Quiz Battle            🗡️ Quest RPG                 🔄 Merge Master
 ⚔️ Code Conquest                   🔐 Escape Room               💥 Battle Royale
                                                                  🏰 Tower Defense
                                                                  🫧 Bubble Pop

 FUTURE — PHASE 4 (New IP)
 ─────────────────────────
 🏎️ Neon Drift (3D racing)
 ⚡ Phantom Arena (action RPG)
 🌌 Star Colonies (3D strategy)

 Total: 14 apps from one indie studio
```

---

## 2. 🔧 Game Engine Strategy

### Why We Stay JavaScript-Native

| Engine | WebView OK? | Build Size | Our Verdict |
|--------|------------|-----------|-------------|
| **Vanilla Canvas + JS** | ✅ Perfect | 7–65 KB | **Our core stack.** Instant load, offline, tiny APKs. Keep using for 2D games. |
| **Phaser 3** | ✅ Excellent | 200 KB (CDN) | **Best upgrade for 2D.** Particle effects, physics, sprite sheets. Use for next-gen 2D titles. |
| **Three.js** | ✅ Excellent | 150 KB (CDN) | **Already in use** (Space Shooter 3D). Best 3D-to-size ratio. |
| **BabylonJS** | ✅ Good | 500 KB–3 MB (CDN) | **Best for complex 3D.** Orbit cameras, PBR materials, full scene graphs. |
| **Unity WebGL** | ❌ No | 15–50 MB | **Rejected.** WASM overhead, SharedArrayBuffer issues, 3-10s startup. Kills the "instant play" brand promise. |
| **Godot HTML5** | ⚠️ Marginal | 5–15 MB | **Not worth it.** Still too heavy for WebView. Marginal quality gain over JS. |

**Decision:** Phaser 3 (2D) + Three.js/BabylonJS (3D). JavaScript is our competitive advantage — games that load before the splash screen fades.

### 3 New Game Concepts (Phase 4)

These use advanced engines while staying true to the JellyBolt aesthetic: neon colors, dark backgrounds, fast gameplay.

#### 🏎️ Neon Drift
> *Low-poly neon racing. Drift through procedural tracks. One thumb, infinite speed.*

- **Engine:** Three.js + cannon-es physics
- **Package:** `com.jellybolt.neondrift`
- **Visual style:** Synthwave tracks glowing against void-black space. Neon trail particles.
- **Mechanic hook:** Drift-to-boost. The more you drift, the faster you go. But lose control and you're toast.
- **Estimated size:** ~50 KB game + CDN libs

#### ⚡ Phantom Arena
> *Top-down hack-and-slash. Procedural dungeons. Pixel-perfect carnage.*

- **Engine:** Phaser 3
- **Package:** `com.jellybolt.phantomarena`
- **Visual style:** JellyBolt neon-dark with sprite-based characters and particle explosions
- **Mechanic hook:** Combo chains. Kill enemies fast enough and your damage multiplier climbs. Stop killing and it resets. Never. Stop. Swinging.
- **Estimated size:** ~80 KB game + CDN lib

#### 🌌 Star Colonies
> *Build your empire among the stars. Trade, expand, defend. One more turn...*

- **Engine:** BabylonJS
- **Package:** `com.jellybolt.starcolonies`
- **Visual style:** Low-poly space stations orbiting glowing planets. UI in JellyBolt neon green on dark panels.
- **Mechanic hook:** "One more turn" syndrome. Each turn takes 30 seconds but the consequences unfold across 5 turns. You can't stop mid-chain.
- **Estimated size:** ~100 KB game + CDN lib

---

## 3. ⚡ JellyBolt Core — The Addiction Framework

A shared JavaScript module (`games/shared/jellybolt-core.js`) loaded by every game, providing a unified player identity and progression system across the entire JellyBolt ecosystem.

**Design principle:** No dark patterns. Engagement through genuine reward loops, not manipulation. Aligned with our revenue strategy: "Players pay for expression, never for advantage."

### 3.1 🔥 Daily Streaks & Challenges

```
 ┌────────────────────────────────────────────┐
 │  ⚡ JellyBolt Daily                        │
 │                                            │
 │  🔥 Streak: 7 days                         │
 │  ┌─────┬─────┬─────┬─────┬─────┬─────┐   │
 │  │ ✅  │ ✅  │ ✅  │ ✅  │ ✅  │ ✅  │   │
 │  │ Mon │ Tue │ Wed │ Thu │ Fri │ Sat │   │
 │  └─────┴─────┴─────┴─────┴─────┴─────┘   │
 │                                            │
 │  Today's Challenge:                        │
 │  "Clear Floor 3 in Dungeon Bolt"           │
 │  Reward: 50 XP + 15 ⚡coins               │
 │                                            │
 │  🎁 Day 7 Reward: 100 ⚡coins + Neon Skin │
 └────────────────────────────────────────────┘
```

| Streak Day | Reward |
|-----------|--------|
| Day 1 | 10 ⚡coins |
| Day 3 | 25 ⚡coins + Mystery Box |
| Day 7 | 100 ⚡coins + Rare Skin |
| Day 14 | 250 ⚡coins + Epic Skin |
| Day 30 | 1000 ⚡coins + Legendary title |

- **Daily challenge** rotates per game — fresh every 24h
- **Cross-game daily**: "Play 3 JellyBolt games today" → bonus XP
- **Streak protection**: Miss a day? Spend 50 ⚡coins to keep your streak alive
- Storage: `localStorage` with `jb_` prefix — works offline, no backend needed

### 3.2 📈 XP & Leveling

| Action | XP Earned |
|--------|-----------|
| Complete any round | +10 XP |
| Win / beat high score | +25 XP |
| Complete daily challenge | +50 XP |
| First game of the day | +20 XP |
| Try a new JellyBolt game | +30 XP (first time only) |

**Level titles** — shown on leaderboards and game-over screens:

| Level Range | Title | Color |
|------------|-------|-------|
| 1–5 | ⚡ Rookie | White |
| 6–15 | ⚡ Pro | Green (`#00ff88`) |
| 16–30 | ⚡ Elite | Cyan (`#58a6ff`) |
| 31–50 | ⚡ Legend | Gold (`#ffcc00`) |
| 51+ | ⚡ Mythic | Magenta (`#ff006e`) |

**Streak multiplier:** ×1.5 XP at 7-day streak, ×2 XP at 30-day streak.

### 3.3 🎨 Unlockables

| Category | Examples | How to Unlock |
|----------|----------|---------------|
| **Themes** | Void Black, Retro Pixel, Ocean Blue, Neon Pink, JellyBolt Gold | Level milestones |
| **Skins** | Character/board skins per game (neon outlines, particle trails) | ⚡coins or achievements |
| **Power-ups** | Slow-mo, Shield, Score ×2, Extra Life | ⚡coins (50–200 each) |
| **Titles** | "Speed Demon", "Puzzle King", "Streak Master", "Bolt Legend" | Specific achievements |
| **Borders** | Neon glow borders on profile card | Rare/epic achievements |

All cosmetic. No gameplay advantages. No pay-to-win. Ever.

### 3.4 🏆 Leaderboards

- **Per-game top 100** (localStorage, instant)
- **Personal best** with date + level at time of score
- **⚡ JellyBolt Score**: Weighted composite across all games — the "studio-wide" rank
- **Future-ready**: Data schema designed to sync to Firebase/Supabase when we add cloud leaderboards

### 3.5 🎖️ Achievements

| Achievement | Condition | Reward |
|-------------|-----------|--------|
| ⚡ First Bolt | Play any JellyBolt game once | 10 ⚡coins |
| 🏆 Century Club | Score 100+ in any game | 25 ⚡coins |
| 🔥 Week Warrior | 7-day streak | 100 ⚡coins + "Dedicated" title |
| 🌟 Game Explorer | Play 10 different JellyBolt games | 50 ⚡coins + "Explorer" title |
| 💎 Bolt Completionist | Play all 40 games | 500 ⚡coins + "Legend" title |
| ⚡ Lightning Fingers | Complete Word Rush in under 30s | 75 ⚡coins |
| 🧠 Galaxy Brain | Perfect score in BrainRot Quiz | 100 ⚡coins |
| ⚔️ Bolt Slayer | Clear all 5 floors in Dungeon Bolt | 200 ⚡coins |
| 🏗️ Tower Architect | Stack 50+ blocks in Pixel Tower | 50 ⚡coins |
| 🎯 Dead Eye | 95%+ accuracy in Sniper Elite | 75 ⚡coins |

**Rarity tiers:** Common → Uncommon → Rare → Epic → ⚡Legendary

Achievement toasts use the JellyBolt neon style — green glow animation with bolt icon.

### 3.6 🔄 "One More Round" Hooks

Every game-over screen is designed to make you tap "Play Again":

1. **Near-miss**: "3 points from a new high score! ⚡" → Play Again button glows
2. **Progressive difficulty**: Rounds get slightly harder. You always feel "I almost had it"
3. **Reward tease**: "Next reward at Level 8 — just 2 more games! ⚡" on game-over
4. **Comeback power-up**: After 3 losses, offer a free power-up. Turns frustration into "let me try ONE more time"
5. **Session bonus**: "10-minute bonus: +5 ⚡coins!" — rewards longer play
6. **Urgency**: "Daily challenge resets in 4h 23m" — time pressure
7. **Social proof**: "You're top 15% in Bounce Blitz!" — competitive drive (local data)

### 3.7 💰 Currency System

```
 ⚡coins (common)              💎 Gems (premium)
 ─────────────────             ───────────────────
 Earned: gameplay,             Earned: achievements,
 streaks, dailies,             milestones, 30-day
 achievements                  streaks

 Spent: power-ups,             Spent: premium skins,
 common skins, streak          exclusive themes,
 protection                    legendary borders
```

- **No real-money purchases** at launch — everything is earned through play
- **Cross-game wallet**: ⚡coins earned in Dungeon Bolt can buy skins in Bounce Blitz
- **Future-ready for IAP**: ⚡coin packs, 💎gem packs, ad-skip passes (when we enable RevenueCat)

### 3.8 🛠️ Implementation — `jellybolt-core.js`

Single file (~15 KB), loaded via `<script>` in every game's `index.html`:

```javascript
// JellyBolt Core SDK — used by all 40+ games
JellyBolt.init('dungeon-bolt')          // Initialize for this game
JellyBolt.player.level                  // Current player level
JellyBolt.player.xp                     // XP progress
JellyBolt.player.coins                  // ⚡coin balance
JellyBolt.player.gems                   // 💎 Gem balance
JellyBolt.player.title                  // "⚡ Elite"
JellyBolt.addXP(25)                     // Award XP (auto level-up + toast)
JellyBolt.addCoins(10)                  // Award ⚡coins
JellyBolt.streak.check()               // Update streak on game launch
JellyBolt.daily.getChallenge()          // Today's challenge for this game
JellyBolt.daily.complete()              // Mark daily done, award rewards
JellyBolt.achieve.unlock('bolt-slayer') // Unlock achievement + toast
JellyBolt.leaderboard.submit(1500)      // Submit score
JellyBolt.ui.showGameOver(score)        // Branded game-over with all hooks
JellyBolt.ui.showLevelUp()              // ⚡ Level-up celebration
```

All data in `localStorage('jb_*')`. Works offline. No backend. No accounts.

---

## 4. 💰 Monetization Strategy

Aligned with our [Revenue Strategy](REVENUE_STRATEGY.md): ethical monetization, no pay-to-win.

### Current Revenue Streams

| Stream | Platform | Status | How It Works |
|--------|----------|--------|-------------|
| **Game Sales** | itch.io | ✅ Active | Free + PWYW ($1–$2) + Premium ($2.99 Dungeon Bolt) |
| **Game Bundle** | Gumroad | ✅ Active | "JellyBolt Games Starter Pack" — all games downloadable |
| **Tips** | Buy Me a Coffee | ⏳ Setup | buymeacoffee.com/jellyboltgames |
| **Ad Revenue** | AdMob (in-app) | ✅ Integrated | Rewarded video ads for bonus ⚡coins |
| **Ad Revenue** | AdSense (web) | ⏳ Pending | Landing page ad placements |

### Expansion Monetization Plan

| Phase | Revenue Addition | Expected Impact |
|-------|-----------------|----------------|
| **Phase 1** | 3 new standalone apps on Play Store → more ad inventory | +30% ad impressions |
| **Phase 2** | JellyBolt Core → longer sessions, daily returns | +50% DAU, +2x session length |
| **Phase 3** | 5 more standalone apps → broader keyword coverage on Play Store | +100% organic installs |
| **Phase 4** | Premium new-IP games (Neon Drift, Phantom Arena) | New $2.99+ pricing tier |
| **Phase 5** | RevenueCat IAP → ⚡coin packs, 💎gem packs, ad-skip | First real IAP revenue |

### Pricing by Distribution Channel

| Channel | Free Games | Tip Games | Premium |
|---------|-----------|-----------|---------|
| **Play Store** | Free + ads | Free + ads | Free + ads (premium via IAP later) |
| **itch.io** | $0 PWYW | $1–$2 PWYW | $2.99 fixed |
| **Gumroad** | — | — | Bundle: $4.99 (all games) |
| **Web** | Free (AdSense) | Free (AdSense) | Free (AdSense) |

### What We Don't Do

Per our [Revenue Strategy](REVENUE_STRATEGY.md):
- ❌ No loot boxes with real money
- ❌ No pay-to-win mechanics
- ❌ No energy systems that block play
- ❌ No aggressive push notifications
- ❌ No data selling
- ❌ No fake scarcity timers

---

## 5. 🔧 Utility Apps Line — Passive Ad Revenue

### The Strategy

Games drive engagement. Utilities drive **steady, predictable ad revenue**.

Every utility app is a separate Play Store listing under the "JellyBolt Games" publisher. They're fast to build (HTML5 WebView or lightweight native), solve a real problem, and monetize through banner + interstitial ads. A user who opens a calculator 5 times a day is 5 ad impressions a day, 365 days a year — without us building any new content.

### Why This Works for JellyBolt

| Factor | Games | Utilities |
|--------|-------|-----------|
| **User sessions** | 1–3/day, 5–15 min each | 3–10/day, 30 sec–2 min each |
| **Retention** | Needs constant content updates | "Set and forget" — user keeps the app forever |
| **Ad revenue model** | Rewarded video (higher CPM, lower volume) | Banner + interstitial (lower CPM, MUCH higher volume) |
| **Build effort** | Medium–High (game design, balance, art) | Low (standard UI, solved problems) |
| **Competition** | High (millions of games) | High but **discoverable** (utility keywords are high-intent search) |
| **Cross-promotion** | Utility users → see JellyBolt games in ads | Game users → see utility apps in "More by JellyBolt" |

### Utility App Portfolio

#### 🥇 Tier 1 — Ship First (Highest ROI, Fastest Build)

| # | App Name | Package | Category | Build Method | Ad Strategy | Why First |
|---|----------|---------|----------|-------------|-------------|-----------|
| 1 | **⚡ Bolt Calculator** | `com.jellybolt.calculator` | `TOOLS` | WebView (HTML/CSS/JS) | Banner (bottom) + interstitial on mode switch | Everyone needs a calculator. ASO gold. 2-day build. |
| 2 | **⚡ Bolt QR** | `com.jellybolt.qrscanner` | `TOOLS` | Native (CameraX + ZXing) | Interstitial after each scan + banner | QR scanning = daily use. Camera permission = native build needed. |
| 3 | **⚡ Bolt Timer** | `com.jellybolt.timer` | `TOOLS` | WebView (HTML/CSS/JS) | Banner (bottom) + reward video for custom sounds | Timer/stopwatch/countdown. Gym, cooking, studying. Multiple sessions/day. |

#### 🥈 Tier 2 — Ship Second (Strong Utility, Moderate Effort)

| # | App Name | Package | Category | Build Method | Ad Strategy | Why |
|---|----------|---------|----------|-------------|-------------|-----|
| 4 | **⚡ Bolt Notes** | `com.jellybolt.notes` | `PRODUCTIVITY` | WebView (localStorage) | Banner + interstitial every 5th note open | Sticky utility. Users who adopt a notes app KEEP it. |
| 5 | **⚡ Bolt Convert** | `com.jellybolt.converter` | `TOOLS` | WebView (HTML/CSS/JS) | Banner + interstitial on category switch | Unit converter (length, weight, temp, currency). High search volume. |
| 6 | **⚡ Bolt Compass** | `com.jellybolt.compass` | `TOOLS` | Native (sensors) | Banner + interstitial on close | Compass + level + flashlight. Uses device sensors = native. |

#### 🥉 Tier 3 — Ship Third (Niche, Higher Effort)

| # | App Name | Package | Category | Build Method | Ad Strategy | Why |
|---|----------|---------|----------|-------------|-------------|-----|
| 7 | **⚡ Bolt WiFi** | `com.jellybolt.wifianalyzer` | `TOOLS` | Native (WiFi APIs) | Banner + interstitial | WiFi analyzer. Niche but dedicated audience. Requires native APIs. |
| 8 | **⚡ Bolt Weather** | `com.jellybolt.weather` | `WEATHER` | WebView + API | Banner + interstitial | Weather widget. Needs API key (OpenWeatherMap free tier). |
| 9 | **⚡ Bolt Files** | `com.jellybolt.filemanager` | `TOOLS` | Native (Storage APIs) | Banner + interstitial | File manager lite. Complex permissions but high retention. |
| 10 | **⚡ Bolt Battery** | `com.jellybolt.battery` | `TOOLS` | Native (BatteryManager) | Banner + notification ads | Battery stats widget. Ongoing background presence = constant impressions. |

### Naming Convention

All utility apps follow the **"Bolt [Function]"** pattern:
- **Bolt Calculator**, **Bolt QR**, **Bolt Timer**, **Bolt Notes**, etc.
- Publisher remains "JellyBolt Games" on Play Store
- Package: `com.jellybolt.{function}`
- Icon: ⚡ bolt motif + function-specific icon element (e.g., bolt + magnifying glass for QR)

### Utility App Tech Stack

| Approach | When to Use | Examples |
|----------|-------------|---------|
| **WebView (reuse game wrapper)** | No hardware APIs needed. Pure UI + logic. | Calculator, Timer, Notes, Unit Converter |
| **Native Android (Java/Kotlin)** | Needs camera, sensors, WiFi, filesystem | QR Scanner, Compass, WiFi Analyzer, File Manager |
| **WebView + Native bridge** | Mostly UI but one native feature | Weather (API call), Battery (BatteryManager) |

WebView utility apps reuse the exact same `GameActivity.java` WebView wrapper from our game apps — just point it at a different HTML file. Same build system, same signing, same CI/CD pipeline. Ship in hours.

### Visual Design — JellyBolt Utility Style

Utilities get the JellyBolt neon treatment but with a **functional twist**:

```
┌──────────────────────────────────────┐
│ ⚡ Bolt Calculator                   │
│ ──────────────────────────────────── │
│                                      │
│           1,234.56                   │  ← White text on dark (#050510)
│                                      │
│  ┌────┬────┬────┬────┐              │
│  │ 7  │ 8  │ 9  │ ÷  │              │  ← Dark cards (#0d0d24)
│  ├────┼────┼────┼────┤              │     with neon green borders
│  │ 4  │ 5  │ 6  │ ×  │              │
│  ├────┼────┼────┼────┤              │
│  │ 1  │ 2  │ 3  │ −  │              │
│  ├────┼────┼────┼────┤              │
│  │ 0  │ .  │ =  │ +  │              │  ← = button: neon green (#00ff88)
│  └────┴────┴────┴────┘              │
│                                      │
│ ┌──────────────────────────────────┐ │
│ │           [ Ad Banner ]          │ │  ← AdMob banner
│ └──────────────────────────────────┘ │
└──────────────────────────────────────┘
```

- Dark background (`#050510`) — same as games
- Neon green accents (`#00ff88`) — primary action buttons
- Electric cyan (`#58a6ff`) — secondary actions
- Functional first, beautiful second — utilities must feel fast and reliable
- ⚡ bolt icon in app bar

### Revenue Projections — Utility Apps

| Metric | Per Utility App (Month 6) | 10 Utility Apps Combined |
|--------|--------------------------|--------------------------|
| Daily Active Users | 500–2,000 | 5,000–20,000 |
| Sessions/day/user | 3–5 | 3–5 |
| Ad impressions/day | 1,500–10,000 | 15,000–100,000 |
| eCPM (banner) | $1–3 | $1–3 |
| eCPM (interstitial) | $5–15 | $5–15 |
| **Monthly revenue** | **$50–300** | **$500–3,000** |

Not game-changing individually, but **extremely low effort to maintain** once built. And every utility app cross-promotes the games.

---

## 6. 📅 Implementation Roadmap

### ⚡ Phase 1 — Standalone Flagships (Week 1–2) `← WE ARE HERE`

- [x] Created 3 standalone app scaffolds (Dungeon Bolt, Quest RPG, Escape Room)
- [x] Built signed AABs (~1.8 MB each)
- [ ] Create store listings (listing.md + metadata.json) for all 3
- [ ] Generate feature graphics and icons in JellyBolt neon style
- [ ] Upload AABs to Play Console as internal testing
- [ ] Promote BrainRot Quiz + Code Conquest: internal → closed testing

### ⚡ Phase 2 — JellyBolt Core SDK (Week 3–4)

- [ ] Build `jellybolt-core.js` (XP, ⚡coins, streaks, achievements)
- [ ] Design branded game-over overlay (neon style, bolt motif)
- [ ] Integrate into Dungeon Bolt, Quest RPG, BrainRot Quiz first
- [ ] Add "one more round" hooks to game-over flow
- [ ] Roll out to all 40 games
- [ ] Rebuild and re-upload all AABs with JellyBolt Core

### ⚡ Phase 3 — Portfolio Expansion (Week 5–6)

- [ ] Create standalone apps: Block Storm, Merge Master, Battle Royale
- [ ] Create standalone apps: Tower Defense, Bubble Pop
- [ ] Store listings + icons for all 5
- [ ] Upload to Play Console → closed testing
- [ ] Update itch.io pages with "Available on Google Play" badges
- [ ] Gumroad bundle update: "40+ games"

### ⚡ Phase 3B — Utility Apps Wave 1 (Week 5–6, parallel with Phase 3)

- [ ] Build Bolt Calculator (WebView — reuse game wrapper)
- [ ] Build Bolt Timer (WebView — stopwatch, countdown, intervals)
- [ ] Build Bolt Convert (WebView — unit/currency converter)
- [ ] AdMob integration for all 3 (banner + interstitial)
- [ ] Store listings + neon-dark icons
- [ ] Upload to Play Console → internal testing

### ⚡ Phase 4 — Next-Gen Games (Week 7–10)

- [ ] Build Neon Drift (Three.js racing)
- [ ] Build Phantom Arena (Phaser 3 action RPG)
- [ ] Build Star Colonies (BabylonJS strategy)
- [ ] Standalone apps for each + store listings
- [ ] Add to JellyBolt Collection app
- [ ] itch.io + Gumroad listings for new games

### ⚡ Phase 4B — Utility Apps Wave 2 (Week 7–10, parallel with Phase 4)

- [ ] Build Bolt QR (Native — CameraX + ZXing library)
- [ ] Build Bolt Notes (WebView — localStorage-backed)
- [ ] Build Bolt Compass (Native — sensor APIs, includes level + flashlight)
- [ ] AdMob integration + store listings
- [ ] Upload to Play Console

### ⚡ Phase 5 — Growth & Revenue (Week 11+)

- [ ] Firebase leaderboard backend → cloud leaderboards
- [ ] Push notifications for daily challenges
- [ ] RevenueCat integration → ⚡coin packs, ad-skip
- [ ] A/B test game-over screens for retention
- [ ] Play Store ASO optimization (screenshots, A/B test descriptions)
- [ ] Cross-promote: TechAI Explained → JellyBolt dev logs
- [ ] Utility apps Wave 3: Bolt WiFi, Bolt Weather, Bolt Files, Bolt Battery

---

## 7. 🏗️ First 3 Standalone Apps — Technical Details

### App Structure

Each standalone follows the proven WebView wrapper pattern. Single activity, fullscreen, offline-capable:

```
android-app-{game}/
├── build.gradle                       # AGP 8.2.0
├── settings.gradle                    # rootProject.name
├── gradle.properties                  # AndroidX, JVM args
├── gradlew / gradlew.bat              # Gradle 8.2
├── gradle/wrapper/
│   └── gradle-wrapper.properties
└── app/
    ├── build.gradle                   # com.jellybolt.{id}, SDK 35
    └── src/main/
        ├── AndroidManifest.xml        # Single fullscreen activity
        ├── java/com/jellybolt/{id}/
        │   └── GameActivity.java      # WebView → file:///android_asset/
        └── assets/games/
            ├── {game-folder}/
            │   └── index.html         # The game itself
            └── shared/
                ├── ads.js             # AdMob integration
                ├── monetization.js    # Support links, cross-promo
                └── games-menu.html    # Back-to-collection link
```

### Built Apps

| App | Directory | Package | AAB Size |
|-----|-----------|---------|---------|
| ⚔️ Dungeon Bolt | `android-app-dungeonbolt/` | `com.jellybolt.dungeonbolt` | 1,866 KB |
| 🗡️ Quest RPG | `android-app-questrpg/` | `com.jellybolt.questrpg` | 1,870 KB |
| 🔐 Escape Room | `android-app-escaperoom/` | `com.jellybolt.escaperoom` | 1,867 KB |

### Build Command

```bash
cd android-app-dungeonbolt
cp /path/to/jellybolt-release.keystore .
./gradlew bundleRelease
# → app/build/outputs/bundle/release/app-release.aab
```

> ⚠️ Keystore is gitignored. In CI/CD, pull from GitHub Actions secrets.

---

## Appendix A: Complete Package Registry

| # | App Title | Package | Play Store | itch.io |
|---|-----------|---------|-----------|---------|
| 1 | JellyBolt Games - Arcade Collection | `com.jellybolt.games` | ✅ Closed testing | — |
| 2 | BrainRot Quiz Battle | `com.jellybolt.brainrotquiz` | ✅ Internal | ✅ Published |
| 3 | Code Conquest | `com.jellybolt.codeconquest` | ✅ Internal | ✅ Published |
| 4 | Dungeon Bolt | `com.jellybolt.dungeonbolt` | 🆕 AAB ready | ✅ Published |
| 5 | Quest RPG | `com.jellybolt.questrpg` | 🆕 AAB ready | — |
| 6 | Escape Room | `com.jellybolt.escaperoom` | 🆕 AAB ready | — |
| 7 | Block Storm | `com.jellybolt.blockstorm` | 📋 Phase 3 | — |
| 8 | Merge Master | `com.jellybolt.mergemaster` | 📋 Phase 3 | — |
| 9 | Battle Royale | `com.jellybolt.battleroyale` | 📋 Phase 3 | — |
| 10 | Tower Defense | `com.jellybolt.towerdefense` | 📋 Phase 3 | — |
| 11 | Bubble Pop | `com.jellybolt.bubblepop` | 📋 Phase 3 | — |
| 12 | Neon Drift | `com.jellybolt.neondrift` | 📋 Phase 4 | — |
| 13 | Phantom Arena | `com.jellybolt.phantomarena` | 📋 Phase 4 | — |
| 14 | Star Colonies | `com.jellybolt.starcolonies` | 📋 Phase 4 | — |
| | **── Utility Apps ──** | | | |
| 15 | ⚡ Bolt Calculator | `com.jellybolt.calculator` | 📋 Phase 3B | — |
| 16 | ⚡ Bolt Timer | `com.jellybolt.timer` | 📋 Phase 3B | — |
| 17 | ⚡ Bolt Convert | `com.jellybolt.converter` | 📋 Phase 3B | — |
| 18 | ⚡ Bolt QR | `com.jellybolt.qrscanner` | 📋 Phase 4B | — |
| 19 | ⚡ Bolt Notes | `com.jellybolt.notes` | 📋 Phase 4B | — |
| 20 | ⚡ Bolt Compass | `com.jellybolt.compass` | 📋 Phase 4B | — |
| 21 | ⚡ Bolt WiFi | `com.jellybolt.wifianalyzer` | 📋 Phase 5 | — |
| 22 | ⚡ Bolt Weather | `com.jellybolt.weather` | 📋 Phase 5 | — |
| 23 | ⚡ Bolt Files | `com.jellybolt.filemanager` | 📋 Phase 5 | — |
| 24 | ⚡ Bolt Battery | `com.jellybolt.battery` | 📋 Phase 5 | — |

## Appendix B: Why NOT Unity/Godot

Our brand promise is **instant play**. WASM engines destroy that:

| Factor | Our JS Games | Unity WebGL | Godot HTML5 |
|--------|-------------|-------------|-------------|
| Load time | **< 100ms** | 3–10 seconds | 1–5 seconds |
| Game size | 7–65 KB | 15–50 MB | 5–15 MB |
| APK size | ~1.8 MB | ~20 MB+ | ~10 MB+ |
| RAM usage | 5–20 MB | 100–300 MB | 50–150 MB |
| Low-end devices | ✅ Works everywhere | ❌ Crashes on cheap phones | ⚠️ Laggy |
| WebView compat | ✅ Perfect | ❌ SharedArrayBuffer issues | ⚠️ WebGL1 only |

If we ever need AAA-quality native games, we'd build native Android apps — not WebView+WASM hybrids. For now, JavaScript IS our competitive moat.

---

<div align="center">

```
⚡ JellyBolt Games — Fun hits different. ⚡
```

*Built with lightning. Played with thunder.*

</div>
