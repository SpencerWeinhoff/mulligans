# Connecting Shopify checkout to the Mulligans site

The site is already **checkout-ready**. Once you create a Shopify store and a product,
you (or Claude) fill in **3 values** in `shop.html` and real "Add to cart → checkout"
goes live. No rebuild.

---

## Part A — What you do in Shopify (one time)

### 1. Create the store
- Go to [shopify.com](https://www.shopify.com) → **Start free trial**.
- Business type: choose **Individual / Sole proprietor**. Use your **SSN** (no LLC needed yet).
- Add a **bank account** for payouts and turn on **Shopify Payments**.
- Plan: **Basic (~$39/mo)** if you want subscriptions; **Starter (~$5/mo)** is fine for one-time sales only.

### 2. Add your product
- **Products → Add product.**
- Title: `Sleeve (3 balls)` · Price: `$6.00` · add a photo + description.
- (Volume discounts for bulk: **Discounts → Automatic discount**, e.g. buy 6+ = $5.50/ea, etc. — mirrors our pricing tiers.)

### 3. Turn on the Buy Button channel
- **Settings → Sales channels → add "Buy Button"** (or Settings → Apps and sales channels).
- This gives you a **Storefront access token** — copy it. (Safe to put in the website; it's browser-facing by design.)

### 4. Grab the 3 values and send them to Claude
1. **Store domain** — looks like `your-store.myshopify.com`
2. **Storefront access token** — from the Buy Button channel
3. **Product ID** for `Sleeve (3 balls)` — open the product in admin; the ID is the number at the end of the URL (`.../products/1234567890`)

---

## Part B — What Claude does (2 minutes)

Paste those 3 values into the `SHOPIFY` object at the bottom of `shop.html`:

```js
var SHOPIFY = {
  domain: 'your-store.myshopify.com',
  storefrontAccessToken: 'your-token',
  sleeveProductId: 'your-product-id'
};
```

Commit + push. The Shopify Buy Button (with quantity picker + secure cart/checkout)
replaces the "Reserve" button automatically. Done.

---

## Moving from sole proprietor → LLC later (fully supported)

Nothing on the website changes. In Shopify:
- **Settings → Store details** — update legal business name.
- **Settings → Payments → Shopify Payments → Manage** — change business type from
  Individual to your registered entity, add your **EIN**, and update the **payout bank account**.

Your products, orders, customers, and the site's checkout token all stay the same —
the website keeps working untouched.

---

## Before taking real orders (not Shopify, but on you)
- [ ] Form an **LLC** + get an **EIN** (recommended for a food product w/ allergens)
- [ ] Sort **production** (cottage-food law vs. commercial/commissary kitchen)
- [ ] Register for a **sales-tax permit** in your state; then enable Shopify Tax
- [ ] Confirm whether protein snacks are **taxable** in your state (varies)
- [ ] Business **bank account**

## Later add-ons
- **Subscriptions** (weekly season plan): install the free **Shopify Subscriptions** app
  (needs Basic plan), create a subscription product, then Claude wires its buy button in.
- **Bulk card**: point to the same Sleeve button (quantity + auto volume discount).
