# Birdie Balz 🏌️

The best snack in golf — landing page + sales one-pager.

## Files
- `index.html` — landing page (hero, benefits, custom-branding pitch, nutrition, interactive pricing, lead form)
- `onepager.html` — printable club sales sheet → open it and click **Print / Save as PDF**
- `styles.css` — landing page styles
- `assets/logo.svg` — Birdie Balz emblem (also the favicon)

## Live site
Hosted on GitHub Pages. Every push to `main` redeploys automatically.

## To make the lead form email you (2 min)
1. Go to [formspree.io](https://formspree.io) → sign up (free) → **New Form**, set the notify email to yours.
2. Copy the form ID (looks like `xyzabcde`).
3. In `index.html`, find `https://formspree.io/f/FORM_ID` and replace `FORM_ID` with your ID.
4. Commit & push. Submissions now land in your inbox. Until then the form runs in harmless "demo mode."

## To add real product photos
Drop images into `assets/` — they appear automatically, and empty slots hide themselves:
- `assets/product-hero.jpg` — replaces the mockup sleeve in the hero
- `assets/product-1.jpg`, `product-2.jpg`, `product-3.jpg` — the gallery band

Square-ish, ~1200px wide, good light. (Use the photo you already have of the three balls!)

## Pricing model (preliminary)
Anchor **$6.00/sleeve** (3 balls). Hard floor **$4.50/sleeve**.
- **One-time bulk:** 1–5 $6.00 · 6–11 $5.50 · 12–23 $5.00 · 24+ $4.75
- **Weekly subscription:** 3–5 $5.50 · 6–11 $5.00 · 12–23 $4.75 · 24+ $4.50

Edit the `bulkTiers` / `subTiers` arrays in `index.html` to change them.
