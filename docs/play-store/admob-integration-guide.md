# AdMob Integration Guide — JellyBolt Games

This guide explains how to replace test AdMob IDs with real production IDs once the app is published on Google Play.

> ⚠️ **Important:** AdMob requires the app to be published and live on Google Play before you can create production ad units. Complete the Play Store launch first.

---

## Step 1 — Create AdMob App

1. Sign in to [admob.google.com](https://admob.google.com) with the JellyBolt Google account
2. Go to **Apps → Add App**
3. Select **Android** as the platform
4. Choose **Yes** — the app is listed on Google Play
5. Search for **"Dungeon Bolt"** and select it
6. Click **Add** — AdMob will generate an **App ID** like `ca-app-pub-XXXXXXXXXXXXXXXX~XXXXXXXXXX`

---

## Step 2 — Create Ad Units

In AdMob, for the Dungeon Bolt app, create three ad units:

| Type | Placement | Variable to update |
|------|-----------|--------------------|
| Banner | Bottom of game screen | `BANNER_AD_UNIT_ID` |
| Interstitial | Between levels / game over | `INTERSTITIAL_AD_UNIT_ID` |
| Rewarded | "Watch ad for extra life" | `REWARDED_AD_UNIT_ID` |

Each unit gets an ID like `ca-app-pub-XXXXXXXXXXXXXXXX/XXXXXXXXXX`.

---

## Step 3 — Update admob.js

Open `games/dungeon-bolt/admob.js` and replace the placeholder test IDs:

```js
// Replace TEST_APP_ID:
const APP_ID = 'ca-app-pub-XXXXXXXXXXXXXXXX~XXXXXXXXXX';

// Replace ad unit IDs:
const BANNER_AD_UNIT_ID       = 'ca-app-pub-XXXXXXXXXXXXXXXX/XXXXXXXXXX';
const INTERSTITIAL_AD_UNIT_ID = 'ca-app-pub-XXXXXXXXXXXXXXXX/XXXXXXXXXX';
const REWARDED_AD_UNIT_ID     = 'ca-app-pub-XXXXXXXXXXXXXXXX/XXXXXXXXXX';
```

Do **not** commit real ad unit IDs to a public repository. Use environment variables or a secrets manager for CI/CD builds.

---

## Step 4 — Verify Ads Display

Test on a physical Android device running the TWA build:

- Banner should appear at the bottom after loading
- Interstitial should trigger at configured game events
- Rewarded ad should play and grant the reward on completion

Use [AdMob test devices](https://support.google.com/admob/answer/9691433) to avoid policy violations during testing.

---

## Step 5 — Repeat for Other Games

| Game | admob.js location |
|------|-------------------|
| Hex Match | `games/hex-match/admob.js` |
| Neon Snake | `games/neon-snake/admob.js` |

Create separate AdMob app entries and ad units for each game.

---

## Notes

- AdMob earnings are deposited once the account threshold is reached (~$100 USD)
- Link AdMob to Google Play Console under **Monetize → AdMob** for combined reporting
- Review AdMob policies to ensure ad placement complies with their guidelines
