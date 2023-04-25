#!/bin/bash

ZSHRC="$HOME/.zshrc"
BASHRC="$HOME/.bashrc"
PUB_CACHE="export PATH=\"\$PATH:$HOME/.pub-cache/bin\""

# Function define
createFile() {
  if [ ! -f "$1" ]; then
      echo "$2 not exits => Create $2"
      touch $1
  fi
}

addPubCachePath() {
  if [[ ! $(<$1) == *"$PUB_CACHE"* ]]; then
    echo "$2 not contain path => Add path to $2"
    echo $PUB_CACHE >> $1
  fi
}

# Go to root project
cd ../../

# Create file RC
createFile $ZSHRC 'ZSHRC'
createFile $BASHRC 'BASHRC'

# Add pub_cache to RC
addPubCachePath $ZSHRC 'ZSHRC'
addPubCachePath $BASHRC 'BASHRC'

# Check dart support
if ! command -v dart &> /dev/null ; then
    echo "dart not install, please install and set it to path"
    echo "End install"
    exit 0
fi

# Active dart global
dart pub global activate melos
dart pub global activate flutter_gen