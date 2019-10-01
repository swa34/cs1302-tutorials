#!/bin/bash

TUTNAME="git"
DIR="cs1302-$TUTNAME"
if [ ! -d $DIR ]; then
  git clone --depth 1 --no-checkout https://github.com/cs1302uga/cs1302-tutorials.git $DIR
  cd $DIR
  git checkout master -- $TUTNAME
  rm -f $TUTNAME/setup.sh
  mv $TUTNAME/* ./
  mv $TUTNAME/.gitignore ./
  rm -rf $TUTNAME
  rm -rf .git
  git init
  git add .gitignore
  git commit -m "initial commit with .gitignore"
  echo "subdirectory $DIR successfully created"
else
  >&2 echo "subdirectory $DIR already exists"
fi  