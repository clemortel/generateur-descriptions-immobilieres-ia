#!/usr/bin/env bash
set -euo pipefail

# Golden Boilerplate — Deploy via git push to Coolify
# Usage: ./deploy.sh

git add .
git commit -m "Auto-deploy" || echo "Nothing to commit"
git push origin main
