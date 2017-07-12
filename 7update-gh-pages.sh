#!/bin/bash

if [ "$TRAVIS_PULL_REQUEST" == "false" ]; then
  echo -e "Starting to update gh-pages\n"

  #go to home and use git branch setup earlier
  cd $HOME
  
  #go into directory and copy data we're interested in to that directory
  cd gh-pages
  rm *.*
  cp -Rf $TRAVIS_BUILD_DIR/out/* .

  #add, commit and push files
  git add -f .
  git commit -m "Travis build $TRAVIS_BUILD_NUMBER pushed to gh-pages"
  git push -fq origin gh-pages > /dev/null
  
  echo -e "Updated https://shreeshrii.github.io/tess4eval/  \n"
fi
