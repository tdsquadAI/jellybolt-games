# TWA Setup Guide — JellyBolt Games

This guide covers building and publishing Trusted Web Activity (TWA) packages for JellyBolt Games on Google Play.

---

## Prerequisites

Install the following before starting:

- **Node.js** v18+ — https://nodejs.org
- **Java JDK 11+** — https://adoptium.net
- **Android SDK** — install via Android Studio or `sdkmanager`
  - Required: `build-tools;33.0.0`, `platforms;android-33`
- **Bubblewrap CLI** — installed on-demand via `npx`

Set environment variables:
```bash
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
```

---

## Step 1 — Generate Signing Keystore

Run once and store the keystore securely (never commit it):

```bash
keytool -genkey -v \
  -keystore android.keystore \
  -alias jellybolt \
  -keyalg RSA \
  -keysize 2048 \
  -validity 10000
```

When prompted, use **JellyBolt Games** as the organizational name. Remember the passwords — they are needed for every build.

---

## Step 2 — Get SHA-256 Fingerprint

```bash
keytool -list -v -keystore android.keystore -alias jellybolt
```

Copy the `SHA256:` value from the output. It looks like:
```
AB:CD:EF:01:23:45:67:89:AB:CD:EF:01:23:45:67:89:AB:CD:EF:01:23:45:67:89:AB:CD:EF:01:23:45:67
```

---

## Step 3 — Update assetlinks.json

Open `android-app/.well-known/assetlinks.json` and replace the placeholder:

```json
"sha256_cert_fingerprints": ["AB:CD:EF:...your actual fingerprint..."]
```

---

## Step 4 — Host assetlinks.json

The file must be publicly accessible at:
```
https://tamirdresher.github.io/.well-known/assetlinks.json
```

For GitHub Pages, copy the file to the root of the `jellybolt-games` repo under `.well-known/assetlinks.json` and ensure GitHub Pages is configured to serve it. Verify with:
```
https://digitalassetlinks.googleapis.com/v1/statements:list?source.web.site=https://tamirdresher.github.io&relation=delegate_permission/common.handle_all_urls
```

---

## Step 5 — Initialize Bubblewrap Project

From the `android-app/twa/` directory:

```bash
npx @bubblewrap/cli init --manifest https://tamirdresher.github.io/jellybolt-games/games/dungeon-bolt/manifest.json
```

Or use the existing config:
```bash
npx @bubblewrap/cli init --config bubblewrap-config.json
```

---

## Step 6 — Build Signed AAB

```bash
npx @bubblewrap/cli build
```

This produces `app-release-bundle.aab` (or `app.aab`) in the output directory. Provide the keystore password when prompted.

---

## Step 7 — Upload to Play Console

1. Go to [Google Play Console](https://play.google.com/console)
2. Select **Dungeon Bolt** app (or create it if not yet created)
3. Navigate to **Production → Releases → Create new release**
4. Upload the `.aab` file
5. Add release notes (e.g., "Initial release")

---

## Step 8 — Content Rating

- Go to **Policy → App content → Content rating**
- Complete the questionnaire
- Select **Everyone** (no violence, no mature content)
- Submit to receive ESRB / PEGI ratings

---

## Step 9 — Data Safety

- Go to **Policy → App content → Data safety**
- Select **"No data collected"**
- Save and submit

---

## Step 10 — Submit for Review

Ensure the store listing is complete (screenshots, description, privacy policy).  
Privacy policy URL is already configured in `store-listings/`.

Click **Submit for review**. Google typically reviews within **1–3 business days**.

---

## Additional Games

Repeat this process for:

| Game | Package ID | Start URL |
|------|-----------|-----------|
| Hex Match | `com.jellybolt.hexmatch` | `/jellybolt-games/games/hex-match/` |
| Neon Snake | `com.jellybolt.neonsnake` | `/jellybolt-games/games/neon-snake/` |

Create separate `bubblewrap-config.json` files for each game in their own subdirectory under `android-app/twa/`.
