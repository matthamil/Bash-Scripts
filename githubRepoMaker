#!/bin/bash
printf "🤔  Repo Name: "
read name
printf "✏️  $name Description: "
read description
printf "✨  Creating repo: $name\n"
curl -u matthamil https://api.github.com/user/repos -d '{ "name": "'"$name"'", 
"description": "'"$description"'" }'
git init
touch .gitignore
echo "bower_components node_modules" >> .gitignore
git add .
git commit -m "first commit"
git remote add origin "git@github.com:matthamil/${name}.git"
git push -u origin master
printf "👍  Done!\n"

