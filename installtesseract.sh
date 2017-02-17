#!/bin/bash

sudo add-apt-repository ppa:alex-p/tesseract-ocr -y
sudo apt-get update -q
sudo apt-get install tesseract-ocr -y
sudo apt-get install tesseract-ocr-hin   -y
ls /usr/share/tesseract-ocr/4.00/tessdata
tesseract -v
tesseract --list-langs
tesseract ./tif/phototest.tif stdout --oem 1 -l eng
