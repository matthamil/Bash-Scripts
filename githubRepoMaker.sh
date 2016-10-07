#!/bin/bash
printf "🤔  Repo Name: "
read name
printf "✏️  $name Description: "
read description
printf "✨  Creating repo: $name\n"
# Replace occurences of "matthamil" with your Github username
curl -u matthamil https://api.github.com/user/repos -d '{ "name": "'"$name"'", 
"description": "'"$description"'" }'
git init
touch README.md
echo $name >> README.md
git add .
git commit -m "first commit"
git remote add origin "git@github.com:matthamil/${name}.git"
git push -u origin master
printf "👍  Done!\n"

