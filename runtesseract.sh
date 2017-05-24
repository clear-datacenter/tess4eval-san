#!/bin/bash

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
