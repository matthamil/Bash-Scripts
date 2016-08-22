#!/bin/bash
wget https://github.com/matthamil/frontend-boilerplate/archive/master.zip
printf "Unzipping...\n"
unzip master.zip
rm master.zip
mv frontend-boilerplate-master/* .
mv frontend-boilerplate-master/.* .
rm -rf frontend-boilerplate-master/
bower install
npm install
printf "🤔   Repo name: "
read name
printf "✏️  $name Description: "
printf "✨  Creating repo: $name\n"
curl -u matthamil https://api.github.com/user/repos -d '{ "name": "'"$name"'",
"description": "'"$description"'" }'
git init
git add .
git commit -m "first commit"
git remote add origin "git@github.com:matthamil/${name}.git"
git push -u origin master
printf "👍  Done!\n"

