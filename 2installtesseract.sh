#!/bin/bash

sudo apt-get install libwebp5
sudo apt-get install tesseract-ocr-equ

sudo dpkg -i  ./tess4-save/libopenjp2.deb 
sudo apt-get install -f
sudo dpkg -i  ./tess4-save/liblept5.deb 
sudo apt-get install -f

sudo dpkg -i  ./tess4-save/tesseract-ocr-osd.deb 
sudo apt-get install -f
sudo dpkg -i  ./tess4-save/tesseract-ocr-eng.deb 
sudo apt-get install -f
sudo dpkg -i  ./tess4-save/tesseract-ocr-hin.deb 
sudo apt-get install -f
sudo dpkg -i  ./tess4-save/tesseract-ocr-san.deb 
sudo apt-get install -f

sudo dpkg -i  ./tess4dev-save/libtesseract4.deb 
sudo apt-get install -f

sudo add-apt-repository -y ppa:alex-p/tesseract-ocr
sudo apt-get update
sudo apt-get --yes --force-yes install  tesseract-ocr

sudo cp ./tess4data-save/${LANGTWO}.traineddata /usr/share/tesseract-ocr/4.00/tessdata
ls /usr/share/tesseract-ocr/4.00/tessdata

tesseract --list-langs
#tesseract ./tif/phototest.tif stdout --oem 1 -l eng

mkdir ${TRAVIS_BUILD_DIR}/${LANG}
mkdir ${TRAVIS_BUILD_DIR}/${LANGTWO}
mkdir ${TRAVIS_BUILD_DIR}/gt
