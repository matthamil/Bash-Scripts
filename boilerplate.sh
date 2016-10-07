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

