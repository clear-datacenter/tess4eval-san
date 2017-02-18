#!/bin/bash

cd ./out
cp ./gt_out.html ./index-${SHA}.html
mv ./gt_out.html ./index.html
git init
git add ./index.html  ./index-${SHA}.html
git commit -m  "${SHA} - Update https://shreeshrii.github.io/tess4eval/ index Pages" 
git push  --force https://user:${GH_TOKEN}@github.com/${GITHUB_REPO}.git master:gh-pages
