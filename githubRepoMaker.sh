#!/bin/bash
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

