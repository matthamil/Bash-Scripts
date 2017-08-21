#!/bin/bash
GREEN='\033[0;32m'
NOCOLOR='\033[0m'

name=$1
if [ -z "$name" ]
  then
    printf "WebGL Project Name: "
    read name
fi
git clone https://github.com/matthamil/WebGLStarterKit $name
cd $name
# Removing Travis CI
rm .travis.yml
# Resetting Git
rm -rf .git
git init
echo -e "WebGL Starter Kit setup in directory ${GREEN}$name${NOCOLOR}!"
