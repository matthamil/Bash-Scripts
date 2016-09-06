#!/bin/bash
wget https://github.com/matthamil/angular-boilerplate/archive/master.zip
printf "Unzipping...\n"
unzip master.zip
rm master.zip
mv angular-boilerplate-master/* .
mv angular-boilerplate-master/.* .
rm -rf frontend-boilerplate-master/
cd lib
bower install
npm install
cd ../
echo -n "Make a new repo for this project? [yes] [no]"
read answer
if [ "$answer" = "yes" ]
then
  printf "🤔   Repo name: "
  read name
  printf "✏️  $name Description: "
  printf "✨  Creating repo: $name\n"
  curl -u matthamil https://api.github.com/user/repos -d '{ "name": "'"$name"'", "description": "'"$description"'" }'
  git init
  git add .
  git commit -m "first commit"
  git remote add origin "git@github.com:matthamil/${name}.git"
  git push -u origin master
  printf "👍  Done!\n"
else
  echo "No new repo created. To make a new repo, run 'mkrepo'."
fi

