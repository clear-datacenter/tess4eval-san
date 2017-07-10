#!/bin/bash

 rm -rf ./tess4data-save
 mkdir ./tess4data-save
 wget -O ./tess4data-save/bihtune.traineddata https://github.com/Shreeshrii/tess4training/raw/gh-pages/san.traineddata
 #wget -O ./tess4data-save/hinlayer.traineddata https://github.com/Shreeshrii/tess4train/raw/gh-pages/san.traineddata
