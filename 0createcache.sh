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
 wget -O ./tess4-save/tesseract-ocr.deb https://launchpad.net/~alex-p/+archive/ubuntu/tesseract-ocr/+files/tesseract-ocr_4.00~git1759-a011b15-1ppa1~trusty1_amd64.deb
 
   rm -rf imagesbih-save
   mkdir imagesbih-save
   git submodule add https://github.com/Shreeshrii/imagesbih
   mv /home/travis/build/Shreeshrii/tess4eval/imagesbih imagesbih-save
   
   rm -rf imageshin-save
   mkdir imageshin-save
   git submodule add https://github.com/Shreeshrii/imageshin
   mv /home/travis/build/Shreeshrii/tess4eval/imageshin imageshin-save 
