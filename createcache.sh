#!/bin/bash

echo "cache already built, if running these commands, clear cache dirs first"

#   wget -O ./jar/ocrevaluation.jar https://bintray.com/impactocr/maven/download_file?file_path=eu%2Fdigitisation%2FocrevalUAtion%2F1.3.0%2FocrevalUAtion-1.3.0-jar-with-dependencies.jar

   rm -rf imagesbih-sav
   mkdir imagesbih-sav
   git submodule add https://github.com/Shreeshrii/imagesbih
   mv /home/travis/build/Shreeshrii/tess4eval/imagesbih imagesbih-save
   
   rm -rf imageshin-save
   mkdir imageshin-save
   git submodule add https://github.com/Shreeshrii/imageshin
   mv /home/travis/build/Shreeshrii/tess4eval/imageshin imageshin-save
   
#   wget -O ./IIIT_Hindi_100.zip  http://ocr.iiit.ac.in/IIIT_Hindi_100.zip
#   unzip ./IIIT_Hindi_100.zip
#   mv ./IIIT_Hindi_100 IIIT_Hindi_100-save
   
