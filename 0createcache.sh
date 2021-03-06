#!/bin/bash

echo "create cache"

rm -rf ./jar
mkdir ./jar
wget -O ./jar/ocrevaluation.jar https://bintray.com/impactocr/maven/download_file?file_path=eu%2Fdigitisation%2FocrevalUAtion%2F1.3.0%2FocrevalUAtion-1.3.0-jar-with-dependencies.jar

rm -rf ./tess4-save
mkdir ./tess4-save
wget -O ./tess4-save/libopenjp2.deb https://launchpad.net/~alex-p/+archive/ubuntu/tesseract-ocr/+files/libopenjp2-7_2.1.2-1+nmu1ppa1~trusty1_amd64.deb
wget -O ./tess4-save/liblept5.deb https://launchpad.net/~alex-p/+archive/ubuntu/tesseract-ocr/+files/liblept5_1.74.1-1+nmu1ppa1~trusty1_amd64.deb
wget -O ./tess4-save/tesseract-ocr-eng.deb https://launchpad.net/~alex-p/+archive/ubuntu/tesseract-ocr/+files/tesseract-ocr-eng_4.00~git11-8bf2e7a-2ppa1~trusty1_all.deb
wget -O ./tess4-save/tesseract-ocr-osd.deb https://launchpad.net/~alex-p/+archive/ubuntu/tesseract-ocr/+files/tesseract-ocr-osd_4.00~git11-8bf2e7a-2ppa1~trusty1_all.deb
wget -O ./tess4-save/tesseract-ocr-hin.deb https://launchpad.net/~alex-p/+archive/ubuntu/tesseract-ocr/+files/tesseract-ocr-hin_4.00~git11-8bf2e7a-2ppa1~trusty1_all.deb
wget -O ./tess4-save/tesseract-ocr-san.deb https://launchpad.net/~alex-p/+archive/ubuntu/tesseract-ocr/+files/tesseract-ocr-san_4.00~git11-8bf2e7a-2ppa1~trusty1_all.deb

rm -rf imagesbih-save
mkdir imagesbih-save
git submodule add https://github.com/Shreeshrii/imagesbih
mv  $TRAVIS_BUILD_DIR/imagesbih imagesbih-save
   
rm -rf imageshin-save
mkdir imageshin-save
git submodule add https://github.com/Shreeshrii/imageshin
mv $TRAVIS_BUILD_DIR/imageshin imageshin-save 

 rm -rf imagessan-save
 mkdir imagessan-save
 git submodule add https://github.com/Shreeshrii/imagessan
 mv  $TRAVIS_BUILD_DIR/imagessan imagessan-save
 ls -l imagessan-save

 rm -rf imagesdeva-save
 mkdir imagesdeva-save
 git submodule add https://github.com/Shreeshrii/tess4eval_deva
 mv  $TRAVIS_BUILD_DIR/tess4eval_deva imagesdeva-save
 ls -l imagesdeva-save
 
