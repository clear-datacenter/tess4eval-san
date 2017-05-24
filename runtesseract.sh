#!/bin/bash

mkdir ${TRAVIS_BUILD_DIR}/${LANG}
mkdir ${TRAVIS_BUILD_DIR}/$LANGTWO}
mkdir ${TRAVIS_BUILD_DIR}/gt
mkdir $TRAVIS_BUILD_DIR/out

cd ${TRAVIS_BUILD_DIR}/imageshin-save/imageshin
echo "Images from Shreeshrii/imageshin"
    img_files=$(ls *.png)
    for img_file in ${img_files}; do
        filename=$(basename "${img_file##*/}" .png)
        echo ${img_file}
        cp ${filename}.txt ${TRAVIS_BUILD_DIR}/gt
        tesseract ${img_file} ${TRAVIS_BUILD_DIR}/${LANG}/${filename} --psm 6 --oem 1 -l $LANG 
        tesseract ${img_file} ${TRAVIS_BUILD_DIR}/${LANGTWO}/${filename} --psm 6 --oem 1 -l $LANGTWO 
    done   
    
      
 cd ${TRAVIS_BUILD_DIR}/imagesbih-save/imagesbih
 echo "Images from Shreeshrii/imagesbih - png files "
    img_files=$(ls *.png)
    for img_file in ${img_files}; do
        filename=$(basename "${img_file##*/}" .png)
        echo ${img_file}
        cp ${filename}.txt ${TRAVIS_BUILD_DIR}/gt
        tesseract  ${img_file}  ${TRAVIS_BUILD_DIR}/${LANG}/${filename} --psm 6 --oem 1 -l $LANG 
        tesseract ${img_file} ${TRAVIS_BUILD_DIR}/${LANGTWO}/${filename} --psm 6 --oem 1 -l $LANGTWO 
    done   
