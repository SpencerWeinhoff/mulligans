# Mulligans 🏌️

The best snack in golf — multi-page marketing site + sales one-pager.

## Front-door toggle (Coming Soon ↔ Full site)
The live homepage (`index.html`) can be flipped between two versions without losing either:
- **`coming-soon.html`** — simple one-page "launching soon" with the Formspree signup form
- **`home.html`** — the full multi-tab site's homepage (always available at `home.html`, even in coming-soon mode)

`index.html` is just a copy of whichever is active. To switch:
```bash
./toggle.sh coming   # front door → Coming Soon page
./toggle.sh full     # front door → Full site
git add -A && git commit -m "Toggle front door" && git push
```
The full site's other tabs (`shop.html`, `wholesale.html`, etc.) stay live regardless of the toggle.

## Pages (tabs)
- `index.html` — **Home**: hero, why-us, featured product/nutrition, flavors teaser, partner-courses (coming soon), reviews (coming soon)
- `shop.html` — **Shop**: two customer segments, product cards, interactive bulk + subscription pricing calculators (checkout "coming soon" → reserve via form)
- `wholesale.html` — **Wholesale**: custom-branding pitch, wholesale pricing, and the working lead/order form (Formspree)
- `flavors.html` — **Flavors**: Original (live) + 3 "coming soon" flavors, plus nutrition panel
- `locations.html` — **Locations**: honest early-stage "coming soon" placeholder
- `onepager.html` — printable club sales sheet → open it and click **Print / Save as PDF**
- `styles.css` — shared styles for all pages
- `assets/logo.svg` — Mulligans emblem (also the favicon)

The lead form lives on **wholesale.html** (`#order`); Shop and other pages link to it. Its Formspree "Phone Number" field is numeric-only, so the form strips non-digits before sending.

## Live site
Hosted on GitHub Pages. Every push to `main` redeploys automatically.

## To make the lead form email you (2 min)
1. Go to [formspree.io](https://formspree.io) → sign up (free) → **New Form**, set the notify email to yours.
2. Copy the form ID (looks like `xyzabcde`).
3. The form is already wired to a live Formspree endpoint in `wholesale.html`. To point it at a different form, replace the ID in the `action="https://formspree.io/f/..."` attribute.
4. Commit & push. Submissions land in your inbox.

## To add real product photos
Drop images into `assets/` — they appear automatically, and empty slots hide themselves:
- `assets/product-hero.jpg` — replaces the mockup sleeve in the hero
- `assets/product-1.jpg`, `product-2.jpg`, `product-3.jpg` — the gallery band

Square-ish, ~1200px wide, good light. (Use the photo you already have of the three balls!)

## Pricing model (preliminary)
Anchor **$6.00/sleeve** (3 balls). Hard floor **$4.50/sleeve**.
- **One-time bulk:** 1–5 $6.00 · 6–11 $5.50 · 12–23 $5.00 · 24+ $4.75
- **Weekly subscription:** 3–5 $5.50 · 6–11 $5.00 · 12–23 $4.75 · 24+ $4.50

Edit the `bulkTiers` / `subTiers` arrays in `shop.html` to change them.
