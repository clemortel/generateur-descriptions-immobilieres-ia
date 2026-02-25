#!/usr/bin/env bash
set -euo pipefail

# Golden Boilerplate — Zero-prompt Vercel deployment
# Usage: ./deploy.sh [--prod]

PROD_FLAG=""
if [[ "${1:-}" == "--prod" ]]; then
  PROD_FLAG="--prod"
fi

echo ":: Installing dependencies…"
npm ci --silent

echo ":: Building…"
npm run generate

echo ":: Deploying to Vercel…"
npx vercel deploy ${PROD_FLAG} --yes --prebuilt 2>/dev/null || \
  npx vercel deploy ${PROD_FLAG} --yes

echo ":: Done."
