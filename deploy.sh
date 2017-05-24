#!/bin/bash

cd $TRAVIS_BUILD_DIR/out

cp gt_$LANG.html index-$LANG-$TRAVIS_BUILD_NUMBER.html
mv gt_$LANG.html index-$LANG.html

cp gt_$LANGTWO.html index-$LANGTWO-$TRAVIS_BUILD_NUMBER.html
mv gt_$LANGTWO.html index-$LANGTWO.html

echo "<html><head><title>Tesseract LSTM Evaluation for Devanagari</title></head><body><ul><li><a href=index-$LANGTWO.html>Using $LANGTWO Traineddata</a></li><li><a href=index-$LANG.html>Using $LANG Traineddata</a></li></ul></body></html>" > index.html
