#!/usr/bin/env sh
# 當發生錯誤時終止腳本運行
set -e
# 打包
npm run build

git add .
git commit -m "build"
git push origin main
git subtree push --prefix dist origin gh-pages
