#!/bin/bash

LANG="hin"

mkdir ./out
mkdir ./ocr
mkdir ./gt

cd ${TRAVIS_BUILD_DIR}/imageshin-save/imageshin
echo "Images from Shreeshrii/imageshin"
    img_files=$(ls *.png)
    for img_file in ${img_files}; do
        filename=$(basename "${img_file##*/}" .png)
        echo ${img_file}
        cp ${filename}.txt ${TRAVIS_BUILD_DIR}/gt
        tesseract ${img_file} ${TRAVIS_BUILD_DIR}/ocr/${filename} --psm 6 --oem 1 -l $LANG 
    done   
    
      
 cd ${TRAVIS_BUILD_DIR}/imagesbih-save/imagesbih
 echo "Images from Shreeshrii/imagesbih - png files "
    img_files=$(ls *.png)
    for img_file in ${img_files}; do
        filename=$(basename "${img_file##*/}" .png)
        echo ${img_file}
        cp ${filename}.txt ${TRAVIS_BUILD_DIR}/gt
        tesseract  ${img_file}  ${TRAVIS_BUILD_DIR}/ocr/${filename} --psm 6 --oem 1 -l $LANG 
    done   

cd ${TRAVIS_BUILD_DIR}
java -cp ./jar/ocrevaluation.jar  eu.digitisation.Main -gt ./gt -ocr ./ocr utf8 -d ./out

DATE=$(date +%d/%m/%Y_%H:%M:%S)
echo ${DATE}

cd ./out

cp ./gt_out.html ./index-$LANG-${DATE}.html
mv ./gt_out.html ./index.html

git init
git add ./index.html  ./index-${DATE}.html
git commit -m  "${DATE} - Update https://shreeshrii.github.io/tess4eval/ index Pages" 
git push  --force https://user:${GITHUB_TOKEN}@github.com/${GITHUB_REPO}.git master:gh-pages
