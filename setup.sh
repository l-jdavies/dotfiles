#!/bin/bash

# Script needs to be run with a leading dot 
# ensures script is executed in current shell
# e.g. . ./setup.sh

for FILE in .*; do
  cp $FILE ~/$FILE
done

chmod 755 .*

source ~/.bashrc
