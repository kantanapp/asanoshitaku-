#!/bin/bash
set -e
cd "$(dirname "$0")"
MSG="${1:-Update}"
git add index.html
git commit -m "$MSG"
git push
echo ""
echo "✅ デプロイ完了"
echo "🌐 https://kantanapp.github.io/asanoshitaku-/"
