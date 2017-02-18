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
        time tesseract ${img_file} ${TRAVIS_BUILD_DIR}/ocr/${filename} --psm 6 --oem 1 -l hin 
    done   
    
 cd ${TRAVIS_BUILD_DIR}/IIIT_Hindi_100-save/IIIT_Hindi_100
 echo "Images from http://ocr.iiit.ac.in/Hindi100.html"
 cd Images
     img_files=$(ls *.jpg)
    for img_file in ${img_files}; do
        filename=$(basename "${img_file##*/}" .jpg)
        echo ${img_file}
        cp ../GT/${filename}.txt ${TRAVIS_BUILD_DIR}/gt
        tesseract  ${img_file}  ${TRAVIS_BUILD_DIR}/ocr/${filename} --psm 6 --oem 1 -l hin 
    done   
       
 cd ${TRAVIS_BUILD_DIR}/imagesbih-save/imagesbih
 echo "Images from Shreeshrii/imagesbih - Files too big, ignore "
    img_files=$(ls bih.Z*.tif)
    for img_file in ${img_files}; do
        filename=$(basename "${img_file##*/}" .tif)
        echo ${img_file}
        cp ${filename}.txt ${TRAVIS_BUILD_DIR}/gt
        time tesseract  ${img_file}  ${TRAVIS_BUILD_DIR}/ocr/${filename} --psm 6 --oem 1 -l hin 
    done   
        
