#!/bin/bash

 rm -rf ./tess4data-save
 mkdir ./tess4data-save
 wget -O ./tess4data-save/bih.traineddata https://github.com/Shreeshrii/tessdata4alpha/raw/master/bih.traineddata

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
 
