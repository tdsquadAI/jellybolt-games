# ΓÜí Block Storm

**Block Blast / 1010!-style puzzle game** in the JellyBolt Games portfolio.

## How to Play

1. **Pick a piece** from the tray at the bottom (tap/click to select).
2. **Place it** on the 10├ù10 grid (tap/click the target cell, or drag-and-drop).
3. **Fill a row or column** completely ΓåÆ it clears and you score points.
4. **Combo bonus** when multiple lines clear at once (├ù2, ├ù3 ΓÇª multiplier).
5. Game ends when **none of the 3 tray pieces** can fit anywhere on the board.

## Scoring

| Action | Points |
|---|---|
| Placing a piece | +1 per cell |
| Clearing 1 line | +10 ├ù cells in line |
| Clearing N lines simultaneously | total line pts ├ù N (combo) |

Best score is saved to `localStorage`.

## Controls

| Platform | Select piece | Place piece |
|---|---|---|
| Desktop | Click tray slot | Click grid cell **or** drag-and-drop |
| Mobile | Tap tray slot | Tap grid cell **or** drag-and-drop |

A **ghost preview** shows where the piece will land (green = valid, red = blocked).

## Piece Library (27 shapes)

- 1├ù1 dot, 1├ù2 / 2├ù1 bars
- 2├ù2 square
- 1├ù3 / 3├ù1 / 1├ù4 / 4├ù1 bars
- Corner (4 rotations)
- L-shape (4 rotations), J-shape (4 rotations)
- S-shape, Z-shape
- T-shape (4 rotations)
- 2├ù3 and 3├ù2 rectangles
- 3├ù3 full block

## Tech

- Single `index.html`, pure vanilla JS, `'use strict'`
- Canvas 2D API for all game rendering
- JellyBolt monetization bar + AdSense placeholder
- Interstitial ad every 5 game-overs
- Fully responsive: 360 px ΓåÆ 1 200 px

## File Structure

```
games/block-storm/
Γö£ΓöÇΓöÇ index.html   ΓåÉ entire game (HTML + CSS + JS)
ΓööΓöÇΓöÇ README.md
```
