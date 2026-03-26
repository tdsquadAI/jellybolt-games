# ≡ƒ½º Bubble Pop Mania

> A Bust-a-Move / Bubble Witch style bubble shooter by **JellyBolt Games**

## Overview

**Bubble Pop Mania** is a fully playable single-file HTML5 bubble shooter game. Aim, shoot, and match 3+ same-colour bubbles to pop them. Clear the entire board to win each of the **30 levels**.

## How to Play

| Control | Action |
|---|---|
| **Mouse move** | Aim the launcher |
| **Click** | Shoot |
| **Arrow Left / Right** | Rotate aim |
| **Space / Arrow Up** | Shoot |
| **Touch drag** | Aim (mobile) |
| **Touch release** | Shoot (mobile) |

## Game Mechanics

### Core Loop
1. A bubble sits in the launcher; the **next** bubble is previewed to its right.
2. Aim with mouse/touch/keyboard and **shoot** upward into the hex grid.
3. When **3 or more** same-colour bubbles connect ΓåÆ they **pop** (score + particles).
4. Any bubbles left **floating** (no path back to the ceiling) **gravity-drop** for bonus points.
5. Clear **all bubbles** to complete the level.

### Special Bubbles (from Level 3+)
| Bubble | Description |
|---|---|
| ≡ƒÆú **Bomb** | Pops itself + all adjacent bubbles regardless of colour |
| ≡ƒîê **Rainbow** | Matches any colour in a connected group |
| ≡ƒ¬¿ **Stone** | Cannot be popped by colour match; only falls when disconnected |

### Scoring
| Event | Points |
|---|---|
| Pop 3 bubbles | +100 |
| Pop 4 bubbles | +200 |
| Pop 5+ bubbles | +200 + 150 per extra bubble |
| Bomb pop | +150 + 30 per bubble |
| Gravity drop | +50 ├ù 1.5 per dropped bubble |

### Stars
End a level with **ΓëÑ 50%** moves remaining ΓåÆ Γ¡ÉΓ¡ÉΓ¡É  
End with **ΓëÑ 25%** remaining ΓåÆ Γ¡ÉΓ¡É  
Otherwise ΓåÆ Γ¡É

## Level System

30 procedurally-parameterised levels that progressively increase in difficulty:

| Aspect | Early Levels | Late Levels |
|---|---|---|
| Pre-filled rows | 2ΓÇô3 | 8ΓÇô10 |
| Colour count | 3 | 6 |
| Move limit | ~40 | ~14 |
| Stone bubbles | None | Up to 16% |
| Bomb / Rainbow | None | Occasional |

Progress (stars per level) is saved in **`localStorage`** (`bpm_p`).

## Technical Details

- **Single file** ΓÇö `index.html`, ~480 lines, vanilla JS, `'use strict'`
- **Canvas 2D** rendering at 60 fps via `requestAnimationFrame`
- **Hex grid** ΓÇö 10 ├ù 14 (10 even-row cols, 9 odd-row cols, offset right by `DX/2`)
- `hex2px(r, c)` converts grid coordinates to canvas pixels
- `neighbors(r, c)` returns valid hex neighbours, handling offset-row edge cases
- **BFS** `colorGroup()` for match detection
- **BFS** `dropFloating()` from row 0 to find and drop disconnected bubbles
- Bubble physics: constant velocity, exact wall reflection, grid-proximity snap
- **AdMob** interstitial every 3 level completions (via `../shared/monetization.js`)
- Responsive canvas; adapts to screen width up to 420 px max

## File Structure

```
games/bubble-pop/
Γö£ΓöÇΓöÇ index.html   ΓåÉ entire game (HTML + CSS + JS)
ΓööΓöÇΓöÇ README.md    ΓåÉ this file
```

## Credits

Built by the JellyBolt Games squad. Part of the JellyBolt HTML5 game collection.

ΓÜí [JellyBolt Games](https://jellybolt.games)
