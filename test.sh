#!/bin/bash

BASE_DIR="/"
FILE_NAME=".mystery_file.txt"
MESSAGE="congratulations you found me"
ROOT_DIR=$(find $BASE_DIR -type d -mindepth 1 -maxdepth 3 ! -path "/proc*" ! -path "/sys*" ! -path "/dev*" ! -path "/run*" ! -path "/var*" ! -path "/etc*" ! -path "/boot*" -print | shuf -n 1)
RANDOM_DIR=$(mktemp -d "$ROOT_DIR/.challenge_XXXXX")

#echo $MESSAGE > "$RANDOM_DIR/$FILE_NAME"
#echo "Hidden file created at: $RANDOM_DIR/$FILE_NAME"
