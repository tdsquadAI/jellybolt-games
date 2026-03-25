# CrazyGames Submission Guide — JellyBolt Games

> Publisher: **JellyBolt Games**  
> Platform: [developer.crazygames.com](https://developer.crazygames.com)  
> Closes: Issue #37

---

## 1. Create Developer Account

1. Go to **https://developer.crazygames.com**
2. Click **Get Started** → register with the JellyBolt Games business email
3. Company/Studio name: `JellyBolt Games`
4. Website: `https://tamirdresher.github.io/jellybolt-games/`
5. **Do NOT include personal names anywhere** — publisher = JellyBolt Games only

CrazyGames reviews applications manually. Approval typically takes **3–7 business days**.

---

## 2. Platform Requirements

CrazyGames requires all games to meet these standards before submission:

| Requirement | Detail |
|-------------|--------|
| **Embeddable** | Game must run in an iframe — no popup windows or redirect-only links |
| **HTTPS** | Game URL must be served over HTTPS |
| **Responsive** | Must work at 960×600 minimum (ideally full-window responsive) |
| **No broken assets** | All assets must load from HTTPS sources |
| **No external login required** | Players must be able to play without account creation |
| **Mobile-friendly** | Touch controls required or clearly flagged as desktop-only |
| **Load time** | Initial load under 5 seconds preferred |
| **Ad SDK** | Must integrate CrazyGames SDK (see Section 4) for revenue |

### JellyBolt Games Compatibility ✅

All JellyBolt games are single `index.html` files hosted at GitHub Pages (HTTPS). They are:
- Fully self-contained (no external asset dependencies)
- Instant-loading (7–16 KB each)
- Touch-compatible

---

## 3. Submit a Game

### Iframe URL Format

Use this URL for each game submission:

```
https://tamirdresher.github.io/jellybolt-games/games/{game-slug}/
```

### Submission Steps

1. Log in to **https://developer.crazygames.com/games**
2. Click **Add New Game**
3. Fill in:
   - **Game Name** (see per-game details below)
   - **Iframe URL** (GitHub Pages URL)
   - **Category / Genre**
   - **Tags**
   - **Description** (150–500 characters)
   - **Thumbnail** (512×512 PNG)
   - **Cover Image** (1200×800 recommended)
   - **Screenshots** (at least 3, 1280×720)
4. Click **Submit for Review**

---

## 4. CrazyGames SDK Integration

> ⚠️ **Required for ad revenue.** Games without the SDK are accepted but earn no revenue.

### Install the SDK

Add to each game's `index.html` `<head>`:

```html
<script src="https://sdk.crazygames.com/crazygames-sdk-v3.js"></script>
```

### Initialize the SDK

```javascript
// Initialize once when game loads
const { CrazyGames } = window;
await CrazyGames.SDK.init();
```

### Request Ad Display

CrazyGames uses **midgame ads** (shown between levels or on game over) and **rewarded ads**.

#### Midgame Ad (show between rounds/levels)

```javascript
async function showMidgameAd() {
  CrazyGames.SDK.ad.hasAdblock(async (hasAdblock) => {
    if (!hasAdblock) {
      await CrazyGames.SDK.ad.requestAd("midgame", {
        adStarted: () => {
          // Pause game, mute audio
          pauseGame();
        },
        adFinished: () => {
          // Resume game
          resumeGame();
        },
        adError: (error) => {
          // Ad failed — resume game anyway
          resumeGame();
          console.log("Ad error:", error);
        },
      });
    }
  });
}

// Call on game over or between levels:
showMidgameAd();
```

#### Rewarded Ad (optional — give player a reward)

```javascript
async function showRewardedAd() {
  await CrazyGames.SDK.ad.requestAd("rewarded", {
    adStarted: () => { pauseGame(); },
    adFinished: () => {
      resumeGame();
      grantReward(); // e.g., extra life, hint, continue
    },
    adError: () => { resumeGame(); },
  });
}
```

### Game Loading Events

Tell CrazyGames when your game has loaded (required):

```javascript
// When game assets are ready
CrazyGames.SDK.game.sdkGameLoadingStart();

// When loading is complete
CrazyGames.SDK.game.sdkGameLoadingStop();
```

### User Login Integration (Optional)

CrazyGames has optional user account integration for saving scores:

```javascript
// Check if user is logged in
const user = await CrazyGames.SDK.user.getUser();
if (user) {
  console.log("Logged in as:", user.username);
}
```

---

## 5. Game Submission Details

### Priority 1: Dungeon Bolt ⚡

| Field | Value |
|-------|-------|
| **Title** | Dungeon Bolt |
| **Category** | Adventure / RPG |
| **Description** | A neon roguelite dungeon crawler with 5 floors, 11 enemy types, loot, shops, and permadeath bosses. Every run is a new adventure — how deep can you go? |
| **Tags** | `roguelite`, `dungeon`, `rpg`, `adventure`, `arcade`, `casual`, `permadeath` |
| **Iframe URL** | `https://tamirdresher.github.io/jellybolt-games/games/dungeon-bolt/` |
| **Ad Placement** | Midgame ad on game over screen |

---

### Priority 2: Hex Match 🔷

| Field | Value |
|-------|-------|
| **Title** | Hex Match |
| **Category** | Puzzle |
| **Description** | Tap hexagonal tiles to match colors, trigger chain combos, and clear the board in 30 moves. How high can you chain? |
| **Tags** | `puzzle`, `match3`, `hexagon`, `casual`, `brain`, `strategy` |
| **Iframe URL** | `https://tamirdresher.github.io/jellybolt-games/games/hex-match/` |
| **Ad Placement** | Midgame ad between game sessions |

---

### Priority 3: Neon Snake 🐍

| Field | Value |
|-------|-------|
| **Title** | Neon Snake |
| **Category** | Arcade |
| **Description** | Classic snake with neon rainbow visuals. Grow your trail and dodge yourself. Simple controls, endless fun. |
| **Tags** | `snake`, `arcade`, `neon`, `retro`, `classic`, `casual`, `highscore` |
| **Iframe URL** | `https://tamirdresher.github.io/jellybolt-games/games/neon-snake/` |
| **Ad Placement** | Midgame ad on game over |

---

### Priority 4: Asteroid Dash 🚀

| Field | Value |
|-------|-------|
| **Title** | Asteroid Dash |
| **Category** | Shooting |
| **Description** | Dodge and blast asteroids in this fast-paced space shooter. Grab powerups, deploy shields, and survive endless waves. |
| **Tags** | `shooter`, `space`, `arcade`, `action`, `asteroids`, `powerups`, `casual` |
| **Iframe URL** | `https://tamirdresher.github.io/jellybolt-games/games/asteroid-dash/` |
| **Ad Placement** | Midgame ad between levels |

---

## 6. Revenue Model — CPM

CrazyGames pays on a **CPM (Cost Per Mille)** basis — per 1,000 ad impressions.

| Metric | Estimate |
|--------|----------|
| **CPM Rate** | $1–$5 per 1,000 impressions (varies by geography and ad quality) |
| **Typical midgame fill rate** | 60–80% |
| **Revenue share** | ~50% to developer (CrazyGames keeps ~50%) |
| **Payment threshold** | $100 minimum |
| **Payment method** | PayPal or bank transfer |
| **Payment schedule** | Monthly (Net-30) |

### Maximizing Revenue

- Place midgame ads on **natural break points** (game over, level complete)
- Avoid showing ads more than once every 2–3 minutes (CrazyGames rate-limits automatically)
- Games with **higher session times** earn more — Dungeon Bolt and Rhythm Tap are the best candidates
- Consider **rewarded ads** for extra lives or hints in applicable games

---

## 7. Checklist

- [ ] Developer account created as "JellyBolt Games"
- [ ] Account approved by CrazyGames (3–7 days)
- [ ] CrazyGames SDK v3 integrated into Dungeon Bolt
- [ ] CrazyGames SDK v3 integrated into Hex Match
- [ ] CrazyGames SDK v3 integrated into Neon Snake
- [ ] CrazyGames SDK v3 integrated into Asteroid Dash
- [ ] All 4 priority games submitted for review
- [ ] Game pages published and live
- [ ] Payment method (PayPal) connected
- [ ] Remaining games submitted after priority 4 is approved

---

*Publisher: JellyBolt Games — https://tamirdresher.github.io/jellybolt-games/*
