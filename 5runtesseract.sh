#!/bin/bash

mkdir ${TRAVIS_BUILD_DIR}/${LANG}
mkdir ${TRAVIS_BUILD_DIR}/${LANGTWO}
mkdir ${TRAVIS_BUILD_DIR}/gt

cd ${TRAVIS_BUILD_DIR}/imagessan-save/imagessan/groundtruthimages
echo "Images from Shreeshrii/imagessan"
    img_files=$(ls *.png)
    for img_file in ${img_files}; do
        filename=$(basename "${img_file##*/}" .png)
        echo ${img_file}
        cp ${filename}.txt ${TRAVIS_BUILD_DIR}/gt
        tesseract ${img_file} ${TRAVIS_BUILD_DIR}/${LANG}/${filename} --psm 6 --oem 1 -l $LANG 
        tesseract ${img_file} ${TRAVIS_BUILD_DIR}/${LANGTWO}/${filename} --psm 6 --oem 1 -l $LANGTWO 
    done   
    
cd ${TRAVIS_BUILD_DIR}/imagessan-save/imagessan/oldstylefontsamples
echo "Images from Shreeshrii/imagessan/oldstylefontsamples"
    img_files=$(ls *.png)
    for img_file in ${img_files}; do
        filename=$(basename "${img_file##*/}" .png)
        echo ${img_file}
        cp ${filename}.txt ${TRAVIS_BUILD_DIR}/gt
        tesseract ${img_file} ${TRAVIS_BUILD_DIR}/${LANG}/${filename} --psm 6 --oem 1 -l $LANG 
        tesseract ${img_file} ${TRAVIS_BUILD_DIR}/${LANGTWO}/${filename} --psm 6 --oem 1 -l $LANGTWO 
    done      
    img_files=$(ls *.tif)
    for img_file in ${img_files}; do
        filename=$(basename "${img_file##*/}" .tif)
        echo ${img_file}
        cp ${filename}.txt ${TRAVIS_BUILD_DIR}/gt
        tesseract ${img_file} ${TRAVIS_BUILD_DIR}/${LANG}/${filename} --psm 6 --oem 1 -l $LANG 
        tesseract ${img_file} ${TRAVIS_BUILD_DIR}/${LANGTWO}/${filename} --psm 6 --oem 1 -l $LANGTWO 
    done  
    
