# 🎮 JellyBolt Games — Expansion Plan

> **Date:** 2026-07-16
> **Author:** Data (Code Expert, Squad)
> **Status:** ACTIVE

---

## Executive Summary

JellyBolt Games has 40 HTML5 games running in WebView-wrapped Android apps, with 3 apps on Play Console. This plan expands to **8 standalone game apps**, evaluates **advanced game engines** for WebView, and designs a **shared addiction framework** to maximize engagement and retention.

---

## 1. Standalone Apps — Top 8 Picks

Games selected based on: depth/complexity (larger codebase = more features), replay value, genre appeal on mobile, and standalone viability (the game must carry an app listing on its own).

### Tier 1 — Ship First (Highest Impact)

| # | Game | Package Name | Size | Why Standalone-Worthy |
|---|------|-------------|------|----------------------|
| 1 | **Dungeon Bolt** | `com.jellybolt.dungeonbolt` | 30.5 KB | Flagship roguelite RPG. 5 floors, 11 enemy types, loot, shops, bosses, permadeath. Deepest game in the catalog. Premium-tier quality. Roguelites are top-grossing on mobile. |
| 2 | **Quest RPG** | `com.jellybolt.questrpg` | 43.7 KB | Full RPG experience with progression. Large codebase = rich content. RPG genre has massive mobile audience and high session times. |
| 3 | **Escape Room** | `com.jellybolt.escaperoom` | 32.2 KB | 5 interconnected rooms, 30+ puzzles, inventory system, 4 endings. Puzzle-adventure is huge on mobile (The Room, Escape games). |

### Tier 2 — Ship Second (Strong Engagement)

| # | Game | Package Name | Size | Why Standalone-Worthy |
|---|------|-------------|------|----------------------|
| 4 | **Block Storm** | `com.jellybolt.blockstorm` | 39.7 KB | Tetris-like mechanics = instant recognition. Massive casual audience. High replay value with progressive difficulty. |
| 5 | **Merge Master** | `com.jellybolt.mergemaster` | 67.1 KB | Largest game in catalog. Merge mechanics are proven addiction loops (Merge Dragons, 2048). Perfect for IAP monetization later. |
| 6 | **Battle Royale** | `com.jellybolt.battleroyale` | 32.8 KB | Battle royale genre recognition. Complex gameplay with multiple systems. Trend-riding appeal. |

### Tier 3 — Ship Third (Niche Appeal)

| # | Game | Package Name | Size | Why Standalone-Worthy |
|---|------|-------------|------|----------------------|
| 7 | **Tower Defense** | `com.jellybolt.towerdefense` | 26.9 KB | Tower defense has dedicated fanbase. Strategic depth with replayability. Easy to extend with new maps/towers. |
| 8 | **Bubble Pop** | `com.jellybolt.bubblepop` | 44.6 KB | Second-largest game. Bubble shooter is proven casual genre (Bubble Witch, Bubble Shooter). Mass-market appeal. |

### Already on Play Console

| App | Package Name | Status |
|-----|-------------|--------|
| JellyBolt Games Collection | `com.jellybolt.games` | Closed testing (active) |
| BrainRot Quiz Battle | `com.jellybolt.brainrotquiz` | Internal testing |
| Code Conquest | `com.jellybolt.codeconquest` | Internal testing |

**Total after expansion: 11 apps on Play Console**

---

## 2. Advanced Game Engines — WebView Feasibility

### Engine Evaluation Matrix

| Engine | WebView Feasible? | Build Size | Performance | Effort | Verdict |
|--------|-------------------|-----------|-------------|--------|---------|
| **Unity WebGL** | ⚠️ Problematic | 15-50+ MB | Poor in WebView (WASM + WebGL2 overhead, no GPU acceleration in Android WebView) | High (Unity license, C# skills) | **NOT recommended** for WebView apps. Unity WebGL is designed for desktop browsers. Android WebView lacks proper WebGL2 + SharedArrayBuffer support. |
| **Godot HTML5** | ✅ Better | 5-15 MB | Moderate (lighter WASM, can target WebGL1) | Medium (GDScript is easy) | **Viable for simpler games**. Godot 4's HTML5 export is lighter than Unity. Works in WebView with WebGL1 fallback. Size is the main concern. |
| **BabylonJS** | ✅ Good | 500KB-3MB (CDN) | Good (purpose-built for browser, WebGL1/2 adaptive) | Low-Medium (JavaScript) | **Best 3D option**. Native web tech, CDN-loadable, excellent mobile WebGL support. Already proven in our Space Shooter 3D. |
| **PlayCanvas** | ✅ Good | 300KB-2MB (CDN) | Good (optimized for mobile web) | Low-Medium (JavaScript) | **Strong alternative to BabylonJS**. Lighter runtime, visual editor available. Great for 3D casual games. |
| **Three.js** | ✅ Excellent | 150KB (CDN) | Excellent (most WebView-friendly) | Low (JavaScript, already used) | **Already in use**. Best performance-to-size ratio. Continue using for 3D content. |
| **Cocos2d-x HTML5** | ⚠️ Dated | 2-5 MB | Moderate | Medium (dated ecosystem) | **Not recommended**. Ecosystem has stalled. Cocos Creator is the successor but targets native, not web. |
| **Phaser 3** | ✅ Excellent | 200KB (CDN) | Excellent (designed for mobile web) | Low (JavaScript) | **Best 2D engine**. Already mentioned in stack. Massive community, CDN-ready, WebView-proven. |

### Recommendation: Stay JavaScript-Native

**Winner: Phaser 3 (2D) + Three.js/BabylonJS (3D)**

Rationale:
- Our apps use `file:///android_asset/` loading — no network needed for core game
- CDN deps (Phaser, Three.js, BabylonJS) are OK per team confirmation
- JavaScript engines keep builds tiny (7-65 KB per game currently!)
- Unity/Godot WASM exports would balloon each app from ~1 MB to 15-50 MB
- Android WebView's WebGL support is inconsistent across devices — simpler = better
- Team already knows JavaScript; no engine-learning curve

### 3 New Advanced-Engine Game Concepts

#### 1. 🏎️ **Neon Drift** (Three.js / BabylonJS — 3D Racing)
- Low-poly neon racing on procedural tracks
- Tilt/touch steering, drift mechanics, speed boosts
- 3D environment with Three.js — lightweight, visually striking
- Package: `com.jellybolt.neondrift`
- Engine: Three.js + cannon-es (physics)
- Estimated size: ~50 KB game + CDN libs

#### 2. 🗡️ **Phantom Arena** (Phaser 3 — 2D Action RPG)
- Top-down hack-and-slash with procedural dungeons
- Character classes, skill trees, equipment drops
- Phaser 3 for silky 2D rendering with particle effects
- Package: `com.jellybolt.phantomarena`
- Engine: Phaser 3 (CDN)
- Estimated size: ~80 KB game + CDN lib

#### 3. 🌌 **Star Colonies** (BabylonJS — 3D Strategy)
- Space colony management in low-poly 3D
- Build stations, trade routes, defend against pirates
- BabylonJS for orbit camera, 3D models, particle systems
- Package: `com.jellybolt.starcolonies`
- Engine: BabylonJS (CDN)
- Estimated size: ~100 KB game + CDN lib

---

## 3. Shared Addiction Framework

A reusable JavaScript module (`jellybolt-core.js`) that ALL games import, providing unified progression across the JellyBolt ecosystem.

### 3.1 Daily Challenges & Streaks

```
┌─────────────────────────────────────────┐
│  🔥 Daily Streak: 7 days               │
│  ├── Day 1: 10 coins                   │
│  ├── Day 3: 25 coins + Mystery Box      │
│  ├── Day 7: 100 coins + Rare Skin       │
│  ├── Day 14: 250 coins + Epic Skin      │
│  └── Day 30: 1000 coins + Legendary     │
│                                          │
│  Today's Challenge:                      │
│  "Score 500+ in Bounce Blitz"            │
│  Reward: 50 XP + 15 coins              │
└─────────────────────────────────────────┘
```

- **Daily challenge** per game (rotates difficulty)
- **Cross-game daily**: "Play 3 different games today" → bonus XP
- **Streak system**: Consecutive days playing ANY JellyBolt game
- **Streak protection**: Miss a day? Spend 50 coins to restore
- Storage: `localStorage` with key prefix `jb_`

### 3.2 XP & Leveling System

```
Level 1  ──────────── Level 2  ──────────── Level 3
   0 XP      100 XP       250 XP       500 XP
   │                                        │
   └── XP Sources ──────────────────────────┘
       • Complete a game round: 10 XP
       • Win / high score: 25 XP
       • Daily challenge: 50 XP
       • First game of day: 20 XP
       • Try a new game: 30 XP (first time)
```

- **Shared XP pool** across all JellyBolt games
- **Player Level** with titles: Rookie (1-5) → Pro (6-15) → Elite (16-30) → Legend (31+)
- **Level-up rewards**: Coins, unlock new themes, special power-ups
- **XP multiplier**: Streak bonus (×1.5 at 7 days, ×2 at 30 days)
- Persisted in `localStorage('jb_player_profile')`

### 3.3 Unlockable Content

| Category | Examples | Unlock Method |
|----------|----------|---------------|
| **Themes** | Dark Mode, Retro, Ocean, Neon Pink, Gold | Level milestones |
| **Skins** | Character skins, board skins per game | Coins / achievements |
| **Power-ups** | Slow-mo, Shield, Score ×2, Extra Life | Coins (50-200 each) |
| **Titles** | "Speed Demon", "Puzzle King", "Streak Master" | Specific achievements |
| **Borders** | Profile card borders shown on leaderboard | Rare achievements |

### 3.4 Leaderboards

- **Local leaderboard** per game (top 100 scores in localStorage)
- **Personal bests** with date tracking
- **Cross-game "JellyBolt Score"**: Weighted sum of best scores across all games
- **Future-ready**: Data structure designed for Firebase/Supabase sync later

```javascript
// Leaderboard entry structure
{
  playerName: "Player",  // Customizable
  score: 1500,
  game: "dungeon-bolt",
  date: "2026-07-16",
  level: 12,
  title: "Dungeon Master"
}
```

### 3.5 Achievement System

| Achievement | Condition | Reward |
|-------------|-----------|--------|
| 🎮 First Steps | Play any game once | 10 coins |
| 🏆 Century Club | Score 100+ in any game | 25 coins |
| 🔥 Week Warrior | 7-day streak | 100 coins + "Dedicated" title |
| 🌟 Game Explorer | Play 10 different games | 50 coins + "Explorer" title |
| 💎 Completionist | Play all 40 games | 500 coins + "Legend" title |
| ⚡ Speed Demon | Complete Word Rush under 30s | 75 coins |
| 🧠 Big Brain | Perfect score in BrainRot Quiz | 100 coins |
| 🗡️ Dungeon Master | Clear all 5 floors in Dungeon Bolt | 200 coins |
| 🏗️ Architect | Stack 50 blocks in Pixel Tower | 50 coins |
| 🎯 Sharpshooter | 95%+ accuracy in Sniper Elite | 75 coins |

- **Toast notifications** on unlock
- **Achievement gallery** accessible from any game's pause menu
- **Rarity tiers**: Common → Uncommon → Rare → Epic → Legendary

### 3.6 "One More Round" Hooks

1. **Near-miss feedback**: "You were 3 points from a new high score!" → Play Again button pulsates
2. **Progressive difficulty**: Each round slightly harder — player always feels "I almost had it"
3. **Post-game tease**: "Next reward at Level 8 (2 more games!)" shown on game-over screen
4. **Comeback mechanic**: After 3 losses, offer a free power-up for next round
5. **Session timer reward**: "You've been playing 10 minutes — here's 5 bonus coins!"
6. **Daily countdown**: "Daily challenge resets in 4h 23m" — creates urgency
7. **Social comparison**: "You're in the top 15% of Bounce Blitz players!" (local data)

### 3.7 Reward Loops — Currency System

```
┌─────────────────────────────────────────┐
│  💰 Coins (common)                      │
│  └── Earned: gameplay, streaks, dailies │
│  └── Spent: power-ups, skins, streak   │
│            protection                    │
│                                          │
│  💎 Gems (premium, rare)                │
│  └── Earned: achievements, milestones   │
│  └── Spent: premium skins, themes      │
│                                          │
│  ⚡ Energy (session limiter - optional) │
│  └── Recharges: 1 per 15 min, 5 max    │
│  └── Bypass: Watch ad (future) or gems │
└─────────────────────────────────────────┘
```

- **No real-money purchases** initially — purely earned
- **Designed for future IAP**: Coin packs, gem packs, ad-skip
- **Cross-game wallet**: Coins earned in any game work in any game

### 3.8 Implementation — `jellybolt-core.js`

Single file, ~15 KB, included via `<script>` tag in every game:

```javascript
// API surface
JellyBolt.init(gameId)           // Initialize for this game
JellyBolt.player.level           // Current level
JellyBolt.player.xp              // Current XP
JellyBolt.player.coins           // Coin balance
JellyBolt.player.gems            // Gem balance
JellyBolt.addXP(amount)          // Award XP (auto level-up)
JellyBolt.addCoins(amount)       // Award coins
JellyBolt.streak.current         // Current streak days
JellyBolt.streak.check()         // Check/update streak
JellyBolt.daily.getChallenge()   // Today's challenge for this game
JellyBolt.daily.complete()       // Mark daily as done
JellyBolt.achieve.unlock(id)     // Unlock achievement
JellyBolt.achieve.list()         // All achievements + status
JellyBolt.leaderboard.submit(score)  // Submit score
JellyBolt.leaderboard.top(n)     // Get top N
JellyBolt.ui.showGameOver(score) // Standardized game-over with hooks
JellyBolt.ui.showLevelUp()       // Level-up celebration
JellyBolt.ui.showAchievement(id) // Achievement toast
```

All data stored in `localStorage` with `jb_` prefix. No backend required.

---

## 4. Implementation Priority — Ordered by Impact

### Phase 1 — Immediate (Week 1-2) ⬅️ START HERE
1. ✅ Create 3 standalone app scaffolds (Dungeon Bolt, Quest RPG, Escape Room)
2. Build AABs for the 3 new standalone apps
3. Upload all 3 to Play Console as internal testing
4. Promote BrainRot Quiz + Code Conquest from internal → closed testing

### Phase 2 — Addiction Framework (Week 3-4)
5. Build `jellybolt-core.js` with: XP, coins, streaks, achievements
6. Integrate into top 5 games (Dungeon Bolt, Quest RPG, BrainRot Quiz, Block Storm, Merge Master)
7. Add standardized game-over screen with "one more round" hooks
8. Roll out to remaining games

### Phase 3 — More Standalones (Week 5-6)
9. Create standalone apps for Block Storm, Merge Master, Battle Royale
10. Create standalone apps for Tower Defense, Bubble Pop
11. Upload all to Play Console
12. Batch-promote to closed testing

### Phase 4 — Advanced Games (Week 7-10)
13. Build Neon Drift (Three.js 3D racing)
14. Build Phantom Arena (Phaser 3 action RPG)
15. Build Star Colonies (BabylonJS strategy)
16. Create standalone apps for each
17. Add to collection app

### Phase 5 — Polish & Growth (Week 11+)
18. Leaderboard backend (Firebase/Supabase)
19. Push notifications for daily challenges
20. A/B test game-over screens for retention
21. Play Store optimization (screenshots, descriptions)
22. Consider IAP integration

---

## 5. First 3 Standalone Apps — Built

### Directory Structure

Each standalone app follows the proven pattern from `android-app-brainrot`:

```
android-app-{game}/
├── build.gradle                    # AGP 8.2.0
├── settings.gradle                 # rootProject.name
├── gradle.properties               # JVM args, AndroidX
├── gradlew / gradlew.bat           # Gradle 8.2 wrapper
├── gradle/wrapper/
│   └── gradle-wrapper.properties
└── app/
    ├── build.gradle                # applicationId, signing, deps
    └── src/main/
        ├── AndroidManifest.xml     # Single-activity, fullscreen
        ├── java/com/jellybolt/{id}/
        │   └── GameActivity.java   # WebView wrapper
        └── assets/games/
            ├── {game-folder}/      # Game files
            │   └── index.html
            └── shared/
                ├── ads.js
                ├── monetization.js
                └── games-menu.html
```

### Apps Created

| App | Directory | Package | Game Bundled |
|-----|-----------|---------|-------------|
| Dungeon Bolt | `android-app-dungeonbolt/` | `com.jellybolt.dungeonbolt` | `games/dungeon-bolt/` |
| Quest RPG | `android-app-questrpg/` | `com.jellybolt.questrpg` | `games/quest-rpg/` |
| Escape Room | `android-app-escaperoom/` | `com.jellybolt.escaperoom` | `games/escape-room/` |

### Build Instructions

```bash
# For each app:
cd android-app-dungeonbolt
# Ensure ANDROID_HOME is set and keystore is in place
cp /path/to/jellybolt-release.keystore .
./gradlew bundleRelease
# AAB output: app/build/outputs/bundle/release/app-release.aab
```

> **Note:** The keystore (`jellybolt-release.keystore`) is NOT in the repo (correctly).
> It must be copied to each `android-app-*/` directory before building.
> In CI/CD, use GitHub Actions secrets for signing credentials.

---

## Appendix A: All Package Names

| App | Package Name | Status |
|-----|-------------|--------|
| JellyBolt Games Collection | `com.jellybolt.games` | Play Console ✅ |
| BrainRot Quiz Battle | `com.jellybolt.brainrotquiz` | Play Console ✅ |
| Code Conquest | `com.jellybolt.codeconquest` | Play Console ✅ |
| Dungeon Bolt | `com.jellybolt.dungeonbolt` | **NEW** — built |
| Quest RPG | `com.jellybolt.questrpg` | **NEW** — built |
| Escape Room | `com.jellybolt.escaperoom` | **NEW** — built |
| Block Storm | `com.jellybolt.blockstorm` | Planned Phase 3 |
| Merge Master | `com.jellybolt.mergemaster` | Planned Phase 3 |
| Battle Royale | `com.jellybolt.battleroyale` | Planned Phase 3 |
| Tower Defense | `com.jellybolt.towerdefense` | Planned Phase 3 |
| Bubble Pop | `com.jellybolt.bubblepop` | Planned Phase 3 |

## Appendix B: Why NOT Unity/Godot for WebView

1. **WASM overhead**: Unity WebGL builds include a ~15 MB runtime. Godot is ~5 MB. Our current games are 7-65 KB each.
2. **WebView ≠ Chrome**: Android WebView lacks features desktop Chrome has (SharedArrayBuffer, full WebGL2, Web Workers with WASM). Unity WebGL frequently fails.
3. **Startup time**: WASM compilation takes 3-10 seconds on mobile. Our games load instantly.
4. **Memory**: WASM games use 100-300 MB RAM. WebView gives limited memory to web content.
5. **Device compatibility**: Low-end Android devices (which make up significant Play Store downloads) can't handle heavy WebGL.
6. **If you need native quality**: Skip WebView entirely, build native Android games with Unity/Godot. But that's a different product.

---

<sub>⚡ Built by JellyBolt Games — Fun hits different</sub>
