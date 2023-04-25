#!/bin/bash

ZSHRC="$HOME/.zshrc"
BASHRC="$HOME/.bashrc"
FLUTTE_PATH="export PATH=\"\$PATH:$HOME/development/flutter/bin\""

# Function define
createFile() {
  if [ ! -f "$1" ]; then
      echo "$2 not exits => Create $2"
      touch $1
  fi
}

addFlutterPath() {
  if [[ ! $(<$1) == *"$FLUTTE_PATH"* ]]; then
    echo "$2 not contain path => Add path to $2"
    echo $FLUTTE_PATH >> $1
  fi
}

# Go to root project
cd ../../

# Create file RC
createFile $ZSHRC 'ZSHRC'
createFile $BASHRC 'BASHRC'

# Add pub_cache to RC
addFlutterPath $ZSHRC 'ZSHRC'
addFlutterPath $BASHRC 'BASHRC'