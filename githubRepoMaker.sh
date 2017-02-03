#!/bin/bash
printf "💻  Github Username: "
read user
printf "🤔  Repo Name: "
read name
myname=${name//[^[:alnum:]]/}
printf "$name changed in $myname for compatibilty with github\n"
printf "✏️  $name Description: "
read description
printf "✨  Creating repo: $myname\n"
curl -u $user https://api.github.com/user/repos -d '{ "name": "'"$myname"'", "description": "'"$description"'" }'
git init
touch README.md
echo $myname >> README.md
git add .
git commit -m ":tada: initial commit"
git remote add origin "git@github.com:matthamil/${myname}.git"
git push -u origin master
printf "👍  Done!\n"

