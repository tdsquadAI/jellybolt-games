# Play Console Launch Checklist — Dungeon Bolt

Use this checklist before submitting Dungeon Bolt (and each subsequent game) for Google Play review.

---

## Build

- [ ] Signing keystore generated (`android.keystore`)
- [ ] SHA-256 fingerprint obtained from keystore
- [ ] `assetlinks.json` updated with real SHA-256 fingerprint
- [ ] `assetlinks.json` hosted and publicly accessible at `https://tamirdresher.github.io/.well-known/assetlinks.json`
- [ ] Digital Asset Links verified via [DAL validator](https://digitalassetlinks.googleapis.com/v1/statements:list?source.web.site=https://tamirdresher.github.io&relation=delegate_permission/common.handle_all_urls)
- [ ] Signed AAB built (`bubblewrap build`)
- [ ] AAB tested on physical device or emulator

---

## Store Listing

- [ ] App title: **Dungeon Bolt**
- [ ] Short description (≤80 chars)
- [ ] Full description (already exists in `store-listings/dungeon-bolt/`)
- [ ] Feature graphic (1024×500 px)
- [ ] Phone screenshots (minimum 2, already captured in `store-listings/`)
- [ ] App icon (512×512 px, already at `assets/icons/dungeon-bolt-512.png`)
- [ ] Category: **Games → Puzzle** (or Arcade as appropriate)
- [ ] Contact email: JellyBolt Games support address

---

## Policy & Compliance

- [ ] Content rating questionnaire completed — rated **Everyone**
- [ ] Data safety section completed — **No data collected**
- [ ] Privacy policy URL added (already exists in `store-listings/`)
- [ ] App access: No special login required (select "All functionality is available without special access")
- [ ] Ads declaration: Confirm whether ads are present (update after AdMob integration)

---

## Release

- [ ] AAB uploaded to **Production → Create new release**
- [ ] Release notes added (e.g., "Initial release of Dungeon Bolt")
- [ ] Rollout percentage set (100% for initial launch)
- [ ] Review submitted

---

## Post-Launch

- [ ] Monitor **Android vitals** for crashes/ANRs in first 48 hours
- [ ] Verify TWA launches correctly (no browser fallback)
- [ ] Add AdMob production IDs once app is live (see `admob-integration-guide.md`)
- [ ] Reply to any early user reviews

---

## Repeat for Additional Games

| Game | Package ID | Status |
|------|-----------|--------|
| Dungeon Bolt | `com.jellybolt.dungeonbolt` | 🔲 Pending |
| Hex Match | `com.jellybolt.hexmatch` | 🔲 Pending |
| Neon Snake | `com.jellybolt.neonsnake` | 🔲 Pending |
