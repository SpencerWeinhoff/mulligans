#!/usr/bin/env bash
# Toggle the site's live front door (index.html).
#   ./toggle.sh coming  → visitors see the simple COMING SOON page
#   ./toggle.sh full    → visitors see the full multi-tab site
# The full site always stays available at home.html regardless of the toggle.
set -e
cd "$(dirname "$0")"
case "$1" in
  coming) cp coming-soon.html index.html; echo "✅ Front door → COMING SOON page";;
  full)   cp home.html        index.html; echo "✅ Front door → FULL site";;
  *) echo "Usage: ./toggle.sh [coming|full]"; exit 1;;
esac
echo "Now commit + push to go live:  git add -A && git commit -m 'Toggle front door' && git push"
