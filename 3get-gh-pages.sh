#!/bin/bash

if [ "$TRAVIS_PULL_REQUEST" == "false" ]; then
  echo -e "Starting to get gh-pages\n"
  
  mkdir ${TRAVIS_BUILD_DIR}/out

  #go to home and setup git
  cd $HOME

  #using token clone gh-pages branch
  git clone --quiet --branch=gh-pages https://${GITHUB_TOKEN}@github.com/${GITHUB_REPO}.git   gh-pages > /dev/null

  #go into directory and copy data we're interested in to that directory
  cd gh-pages
 
  cp -f *.html $TRAVIS_BUILD_DIR/out/

  echo -e "Got *.html from gh-pages\n"
fi
