# 📋 JellyBolt Games — Decision Log

## Decision Format
Each decision follows: **Date | Decision | Rationale | Decided By**

---

## Studio Decisions

### 2025-01-15 — Studio Name: "JellyBolt Games"
- **Decision:** Named the studio "JellyBolt Games"
- **Rationale:** Catchy, kid-friendly, no trademark conflicts, memorable for app store search
- **Decided by:** Mario (picard)

### 2025-01-15 — Android Only (No iOS)
- **Decision:** Target Android exclusively, no iOS builds
- **Rationale:** Lower barrier to entry (no Apple Developer Program $99/yr, no Mac required for builds), Google Play 15% commission vs Apple 30%, faster iteration with EAS Build
- **Decided by:** Mario (picard)

### 2025-01-15 — React Native + Expo Stack
- **Decision:** Use React Native with Expo for all games
- **Rationale:** Shared codebase knowledge across games, fast development, Expo EAS for builds, large ecosystem. If a game needs native performance, we can eject later.
- **Decided by:** Mario (picard) + Sonic (data)

### 2025-01-15 — Supabase as Backend
- **Decision:** Use Supabase for auth, database, realtime, and edge functions
- **Rationale:** Free tier generous enough for MVP, PostgreSQL is reliable, realtime for multiplayer, edge functions for serverless logic. Cheaper than Firebase at scale.
- **Decided by:** Link (belanna)

### 2025-01-15 — RevenueCat for Billing
- **Decision:** Use RevenueCat for in-app purchase management
- **Rationale:** Handles receipt validation, subscription management, analytics. Free up to $2,500 MTR. Industry standard for mobile billing.
- **Decided by:** Toad (worf)

### 2025-01-15 — No Gambling / No Loot Boxes
- **Decision:** Zero tolerance for gambling mechanics in any game
- **Rationale:** Legal requirement (many countries ban loot boxes for minors), ethical commitment, better long-term player retention. Cosmetics-only monetization.
- **Decided by:** Mario (picard) — non-negotiable studio policy

### 2025-01-15 — Game Portfolio: 3 Games
- **Decision:** Launch with 3 games: BrainRot Quiz Battle, Bounce Blitz, Idle Critter Farm
- **Rationale:** Diversifies risk across genres (trivia, arcade, idle). BrainRot already in development. Bounce Blitz is fast to build (2-4 weeks). Idle Critter Farm targets different player type.
- **Decided by:** Mario (picard)

---

## Game-Specific Decisions

*(To be added as development progresses)*
