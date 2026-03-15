# ⚡ JellyBolt Games

> **Fun, Free, Fair games for kids & teens.**

JellyBolt Games is an indie mobile game studio focused on creating **free-to-play Android games** that are safe, fun, and fair for young players. We believe great games don't need gambling, pay-to-win mechanics, or shady monetization.

---

## 🎮 Game Portfolio

| Game | Genre | Status | Repo |
|------|-------|--------|------|
| **BrainRot Quiz Battle** | Multiplayer Trivia | 🟡 In Development | [brainrot-quiz-battle](https://github.com/tamirdresher/brainrot-quiz-battle) |
| **Bounce Blitz** | One-Tap Arcade | 🔵 Design Phase | [bounce-blitz](https://github.com/tamirdresher/bounce-blitz) |
| **Idle Critter Farm** | Idle / Merge | 🔵 Design Phase | [idle-critter-farm](https://github.com/tamirdresher/idle-critter-farm) |

---

## 🎯 Mission

**"Make games kids love — without tricks, traps, or paywalls."**

- ✅ **Free to download and play** — no purchase required
- ✅ **Cosmetics-only monetization** — skins, themes, emotes (no gameplay advantage)
- ✅ **Battle passes** — optional premium content seasons
- ✅ **No gambling** — no loot boxes with real money, no slot mechanics
- ✅ **No pay-to-win** — skill and fun always come first
- ✅ **Privacy-first** — COPPA-aware, minimal data collection
- ✅ **No trademarked/copyrighted content** — 100% original IP

---

## 🛠 Tech Stack

| Layer | Technology |
|-------|-----------|
| **Mobile App** | React Native + Expo (Android) |
| **Game Engine** | React Native Game Engine / Custom Canvas |
| **Backend** | Supabase (Auth, DB, Realtime, Edge Functions) |
| **Billing** | RevenueCat + Google Play Billing |
| **Analytics** | Firebase Analytics + Crashlytics |
| **Remote Config** | Firebase Remote Config (A/B testing) |
| **CI/CD** | GitHub Actions → EAS Build → Play Store |
| **Store** | Google Play Store (Android only) |

---

## 🎨 Studio Identity

- **Name:** JellyBolt Games
- **Tagline:** "Fun hits different ⚡"
- **Logo Concept:** A bouncy jelly blob with a lightning bolt through it, bright neon colors (electric blue + lime green)
- **Target Audience:** Kids 8-16, teens, casual gamers
- **Markets:** Israel (Hebrew + English), Global (English)

---

## 📊 Revenue Model

See [REVENUE_STRATEGY.md](./REVENUE_STRATEGY.md) for full details.

**TL;DR:**
- Games are **100% free** to download
- Revenue from **cosmetics**, **battle passes**, and **optional rewarded ads**
- Google Play takes 15% (first $1M/year), then 30%
- RevenueCat handles billing infrastructure
- Target: $5K-$50K MRR per game at scale

---

## 🏗 How to Contribute

This is a **Squad-powered** studio. Each game has its own Squad team. See `.squad/` for team configuration.

1. Check the [Studio Board](https://github.com/users/tamirdresher/projects/) for open tasks
2. Pick an issue labeled `good-first-issue` or your specialty
3. Create a branch: `squad/{issue-number}-description`
4. Submit a PR, get review, ship it

---

## ⚖️ Legal & Ethics

- **Business Entity:** Registered עוסק מורשה (Israeli sole proprietorship)
- **No gambling:** Zero real-money randomized rewards
- **COPPA-aware:** Minimal data collection for users under 13
- **Privacy Policy:** Published per-game on Play Store
- **Terms of Service:** Clear, fair, readable
- **Original content only:** No trademarked characters, no copyrighted material
- **All games rated E / Everyone** on Google Play

---

## 📁 Repository Structure

```
jellybolt-games/          # Studio HQ (this repo)
├── .squad/               # Squad team configuration
├── REVENUE_STRATEGY.md   # Monetization strategy
├── ralph-watch.ps1       # Autonomous monitoring
├── docs/                 # Studio docs, legal templates
└── README.md             # You are here

brainrot-quiz-battle/     # Game 1 — Multiplayer trivia
bounce-blitz/             # Game 2 — One-tap arcade
idle-critter-farm/        # Game 3 — Idle merge game
```

---

<sub>⚡ Built with love by JellyBolt Games • Powered by Squad AI</sub>
