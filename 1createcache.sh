#!/bin/bash

echo "create tesseract 4 dev cache"

 rm -rf ./tess4dev-save
 mkdir ./tess4dev-save
 wget -O ./tess4dev-save/libtesseract4.deb https://launchpad.net/~alex-p/+archive/ubuntu/tesseract-ocr/+files/libtesseract4_4.00~git1987-8bd2fa7-1ppa1~trusty1_amd64.deb
 wget -O ./tess4dev-save/tesseract-ocr.deb https://launchpad.net/~alex-p/+archive/ubuntu/tesseract-ocr/+files/tesseract-ocr_4.00~git1987-8bd2fa7-1ppa1~trusty1_amd64.deb

 rm -rf ./tess4data-save
 mkdir ./tess4data-save
 wget -O ./tess4data-save/bih.traineddata https://github.com/Shreeshrii/tessdata4alpha/raw/master/bih.traineddata

 rm -rf imagessan-save
 mkdir imagessan-save
 git submodule add https://github.com/Shreeshrii/imagessan
 mv  $TRAVIS_BUILD_DIR/Shreeshrii/tess4eval/imagessan imagessan-save
 ls -l imagessan-save

 rm -rf imagesdeva-save
 mkdir imagesdeva-save
 git submodule add https://github.com/Shreeshrii/tess4eval_deva
 mv  $TRAVIS_BUILD_DIR/Shreeshrii/tess4eval/tess4eval_deva imagesdeva-save
 ls -l imagesdeva-save
 
