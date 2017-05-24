#!/bin/bash

cd ./out

cp ./gt_out.html ./index-${DATE}.html
mv ./gt_out.html ./index.html

git init
git add ./index.html  ./index-${DATE}.html
git commit -m  "${DATE} - Update https://shreeshrii.github.io/tess4eval/ index Pages" 
git push  --force https://user:${GITHUB_TOKEN}@github.com/${GITHUB_REPO}.git master:gh-pages
