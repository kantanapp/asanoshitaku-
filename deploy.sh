#!/bin/bash
set -e
cd "$(dirname "$0")"
MSG="${1:-Update}"

# キャッシュバージョンをタイムスタンプで更新（PWA自動アップデートのため）
NEW_VER="asajunbi-v$(date +%Y%m%d%H%M)"
sed -i '' "s/const CACHE_NAME = 'asajunbi-v[^']*'/const CACHE_NAME = '$NEW_VER'/" sw.js

git add index.html sw.js
git commit -m "$MSG"
git push
echo ""
echo "✅ デプロイ完了（キャッシュバージョン: $NEW_VER）"
echo "🌐 https://kantanapp.github.io/asanoshitaku-/"
