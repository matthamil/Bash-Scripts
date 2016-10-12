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
echo -n "Make a new repo for this project? [yes] [no]"
read answer
if [ "$answer" = "yes" ]
then
  printf "🤔  Repo Name: "
  read name
  myname=${name//[^[:alnum:]]/}
  printf "$name changed in $myname for compatibilty with github\n"
  printf "✏️  $name Description: "
  read description
  printf "✨  Creating repo: $myname\n"
  # Replace occurences of "matthamil" with your Github username
  curl -u matthamil https://api.github.com/user/repos -d '{ "name": "'"$myname"'", "description": "'"$description"'" }'
  git init
  touch README.md
  echo $myname >> README.md
  git add .
  git commit -m "first commit"
  git remote add origin "git@github.com:matthamil/${myname}.git"
  git push -u origin master
  printf "👍  Done!\n"
else
  echo "No new repo created. To make a new repo, run 'mkrepo'."
fi

