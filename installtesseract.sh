#!/bin/bash

sudo apt-get install libwebp

sudo dpkg -i  ./tess4-save/libopenjp2.deb 
sudo apt-get install -f
sudo dpkg -i  ./tess4-save/liblept5.deb 
sudo apt-get install -f

sudo dpkg -i  ./tess4-save/libtesseract4.deb 
sudo apt-get install -f

sudo dpkg -i  ./tess4-save/tesseract-ocr-osd.deb 
sudo apt-get install -f
sudo dpkg -i  ./tess4-save/tesseract-ocr-eng.deb 
sudo apt-get install -f
sudo dpkg -i  ./tess4-save/tesseract-ocr-hin.deb 
sudo apt-get install -f

sudo dpkg -i  ./tess4-save/tesseract-ocr.deb 
sudo apt-get install -f

ls /usr/share/tesseract-ocr/4.00/tessdata

tesseract -v
tesseract --list-langs
tesseract ./tif/phototest.tif stdout --oem 1 -l eng
