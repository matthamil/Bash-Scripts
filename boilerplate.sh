#!/bin/bash
wget https://github.com/matthamil/angular-boilerplate/archive/master.zip
printf "Unzipping...\n"
unzip master.zip
rm master.zip
mv angular-boilerplate-master/* .
mv angular-boilerplate-master/.* .
rm -rf angular-boilerplate-master/
cd lib
bower install
npm install
cd ../
