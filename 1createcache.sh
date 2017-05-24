#!/bin/bash

echo "create tesseract 4 dev cache"

 rm -rf ./tess4dev-save
 mkdir ./tess4dev-save
 wget -O ./tess4dev-save/libtesseract4.deb https://launchpad.net/~alex-p/+archive/ubuntu/tesseract-ocr/+files/libtesseract4_4.00~git1987-8bd2fa7-1ppa1~trusty1_amd64.deb
 wget -O ./tess4dev-save/tesseract-ocr.deb https://launchpad.net/~alex-p/+archive/ubuntu/tesseract-ocr/+files/tesseract-ocr_4.00~git1987-8bd2fa7-1ppa1~trusty1_amd64.deb

 rm -rf ./tess4data-save
 mkdir ./tess4data-save
 wget -O ./tess4data-save/bih.traineddata https://github.com/Shreeshrii/tessdata4alpha/raw/master/bih.traineddata
