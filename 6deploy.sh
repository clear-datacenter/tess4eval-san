#!/bin/bash

cd $TRAVIS_BUILD_DIR/out

mv gt_$LANG.html index-$LANG.html
mv gt_$LANGTWO.html index-$LANGTWO.html

echo "<html><head><title>Tesseract 4.00.00alpha LSTM Evaluation for Sanskrit</title></head>" \
"<body><h2>Tesseract 4.0 LSTM Evaluation for Devanagari</h2>" \
"<li><a href=index-$LANG.html>OCRed using $LANG traineddata from tessdata repo</a></li></ul>" \
"<ul><li><a href=index-$LANGTWO.html>OCRed using $LANGTWO traineddata from current training</a></li>" \
"</body></html>" > index.html
