#!/bin/bash

cd $TRAVIS_BUILD_DIR/out

cp gt_$LANG.html index-$LANG-$TRAVIS_BUILD_NUMBER.html
mv gt_$LANG.html index-$LANG.html

cp gt_$LANGTWO.html index-$LANGTWO-$TRAVIS_BUILD_NUMBER.html
mv gt_$LANGTWO.html index-$LANGTWO.html

echo "<html><head><title>Tesseract 4.00.00alpha LSTM Evaluation for Devanagari</title></head><body><h1>Tesseract 4.0 LSTM Evaluation for Devanagari</h1><ul><li><a href=index-$LANGTWO.html>Using newly trained $LANGTWO Traineddata</a></li><li><a href=index-$LANG.html>Using $LANG Traineddata from Tesseract repo</a></li></ul></body></html>" > index.html
