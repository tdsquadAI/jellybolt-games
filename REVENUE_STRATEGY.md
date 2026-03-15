# 💰 JellyBolt Games — Revenue Strategy

## Core Philosophy

> **Players pay for expression, never for advantage.**

Every JellyBolt game is **free to download and play forever**. We monetize through cosmetic items, battle passes, and optional ads — never through gameplay advantages, gambling, or predatory mechanics.

---

## 🎯 Monetization Pillars

### 1. Cosmetic Items (Primary Revenue)
- **Character skins** — visual changes only, no stat boosts
- **Themes & backgrounds** — custom game environments
- **Emotes & celebrations** — victory animations, reactions
- **Name colors & badges** — profile customization
- **Price range:** ₪5–₪25 ($1.49–$6.99)
- **Target conversion:** 3-5% of active players

### 2. Battle Pass (Seasonal Revenue)
- **Free tier:** Basic rewards for playing (keeps engagement)
- **Premium tier:** ₪20/season (~$5.99) — cosmetics, exclusive items
- **Season length:** 4-6 weeks
- **Design principle:** Never lock gameplay behind premium
- **Target attach rate:** 8-12% of DAU

### 3. Optional Rewarded Ads (Supplementary)
- **Rewarded video ads:** Watch a 30s ad → get bonus coins/lives
- **Interstitial ads:** Between rounds (max 1 per 3 games, skippable)
- **NO forced ads** — player always has choice
- **Ad networks:** Google AdMob (primary), Unity Ads (backup)
- **Expected eCPM:** $5-15 (Israel), $2-8 (global)

### 4. Premium Subscriptions (Future — Game 3 only)
- **"VIP Farmer" pass:** ₪15/month — 2x idle earnings, exclusive critters
- **Design rule:** VIP is a time-saver, not a paywall
- **Target:** 2-4% of MAU

---

## 🚫 What We Will NEVER Do

| Prohibited | Reason |
|-----------|--------|
| Loot boxes with real money | Gambling — illegal for kids in many jurisdictions |
| Pay-to-win mechanics | Destroys game balance, loses players |
| Energy systems that block play | Predatory, frustrates kids |
| Aggressive push notifications | Manipulative, bad UX |
| Data selling | Privacy violation, illegal under COPPA |
| Fake scarcity timers | Dark pattern, unethical |
| Trademarked characters | Legal liability |
| Copyrighted music/art | Legal liability |

---

## 📊 Revenue Projections (Per Game)

### Assumptions
- **DAU at scale:** 5,000–50,000 per game
- **ARPDAU:** $0.03–$0.10 (industry average for casual games)
- **Conversion to paid:** 3-5%
- **Average transaction:** $3.50

### BrainRot Quiz Battle (Game 1)

| Metric | Month 3 | Month 6 | Month 12 |
|--------|---------|---------|----------|
| DAU | 1,000 | 5,000 | 15,000 |
| Monthly Revenue | $900 | $7,500 | $30,000 |
| Google Play Cut (15%) | -$135 | -$1,125 | -$4,500 |
| Net Revenue | $765 | $6,375 | $25,500 |

### Bounce Blitz (Game 2)

| Metric | Month 3 | Month 6 | Month 12 |
|--------|---------|---------|----------|
| DAU | 2,000 | 10,000 | 30,000 |
| Monthly Revenue | $1,800 | $15,000 | $60,000 |
| Google Play Cut (15%) | -$270 | -$2,250 | -$9,000 |
| Net Revenue | $1,530 | $12,750 | $51,000 |

### Idle Critter Farm (Game 3)

| Metric | Month 3 | Month 6 | Month 12 |
|--------|---------|---------|----------|
| DAU | 800 | 4,000 | 12,000 |
| Monthly Revenue | $960 | $6,000 | $24,000 |
| Google Play Cut (15%) | -$144 | -$900 | -$3,600 |
| Net Revenue | $816 | $5,100 | $20,400 |

### Combined Studio Revenue (Year 1 Target)

| Quarter | Combined Net Revenue |
|---------|---------------------|
| Q1 | $3,111 |
| Q2 | $24,225 |
| Q3 | $58,200 |
| Q4 | $96,900 |
| **Year 1 Total** | **~$182,000** |

---

## 💳 Billing Infrastructure

### RevenueCat
- **Why:** Cross-platform subscription/IAP management
- **Features:** Receipt validation, analytics, A/B testing, webhooks
- **Pricing:** Free up to $2,500 MTR, then 1% of tracked revenue
- **Integration:** React Native SDK → RevenueCat → Google Play Billing

### Google Play Billing
- **Commission:** 15% on first $1M/year (then 30%)
- **Subscription commission:** 15% after 12 months of continuous subscription
- **Payment processing:** Handled entirely by Google
- **Refund policy:** Follow Google Play policies

### Pricing Strategy
- **Israel (₪):** Primary currency, competitive pricing
- **Global ($):** USD pricing for international markets
- **A/B Testing:** Firebase Remote Config to test price points
- **Localization:** Prices adapted per market using Google Play's auto-conversion

---

## 📈 Growth Strategy

### Organic Growth
1. **TikTok content:** Gameplay clips, "Can you beat this?" challenges
2. **YouTube Shorts:** Quick gameplay highlights
3. **App Store Optimization (ASO):** Keywords, screenshots, A/B test listings
4. **Word of mouth:** Referral rewards (cosmetic items for inviting friends)

### Paid Acquisition (Phase 2, when profitable)
- **Budget:** 30% of net revenue reinvested in UA
- **Channels:** Google UAC (Universal App Campaigns), TikTok Ads
- **Target CPI:** $0.50–$2.00
- **Target LTV:CPI ratio:** > 3:1

---

## 🔧 Analytics & Optimization

### Key Metrics (KPIs)
- **DAU / MAU** — Daily & monthly active users
- **D1 / D7 / D30 Retention** — Player stickiness
- **ARPDAU** — Average revenue per daily active user
- **Conversion Rate** — Free → paid player conversion
- **Session Length** — Average play time per session
- **Battle Pass Attach Rate** — % of DAU buying premium pass

### Tools
- **Firebase Analytics** — Event tracking, funnels, cohorts
- **Firebase Crashlytics** — Crash reporting, stability monitoring
- **Firebase Remote Config** — A/B test features, prices, content
- **RevenueCat Dashboard** — Revenue, subscription, churn analytics
- **Google Play Console** — Store performance, ratings, reviews

---

## ⚖️ Legal Compliance

### Google Play Policies
- ✅ Games rated **E (Everyone)** or **E10+**
- ✅ No real-money gambling
- ✅ Ads clearly labeled as ads
- ✅ In-app purchase prices clearly displayed
- ✅ Parental gate for purchases (via Google Play family policies)

### COPPA (Children's Online Privacy Protection Act)
- ✅ Minimal data collection
- ✅ No behavioral advertising for users under 13
- ✅ Parental consent mechanisms
- ✅ Privacy policy clearly states data practices

### Israeli Law
- ✅ Business registered as עוסק מורשה
- ✅ Revenue reported per Israeli tax requirements
- ✅ Consumer protection compliance
- ✅ VAT handled by Google Play for Israeli transactions

---

<sub>Last updated: January 2025 • JellyBolt Games Revenue Strategy v1.0</sub>
