#!/bin/bash
wget https://github.com/matthamil/Angular1Webpack/archive/master.zip
printf "Unzipping...\n"
unzip master.zip
rm master.zip
mv Angular1Webpack-master/* .
mv Angular1Webpack-master/.* .
rm -rf Angular1Webpack-master/
cd lib
npm install
cd ../

