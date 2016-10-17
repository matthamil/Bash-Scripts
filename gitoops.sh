#!/bin/bash
printf "\n"
echo -e "$(tput bold)███████╗██╗   ██╗ ██████╗██╗  ██╗██╗
██╔════╝██║   ██║██╔════╝██║ ██╔╝██║
█████╗  ██║   ██║██║     █████╔╝ ██║
██╔══╝  ██║   ██║██║     ██╔═██╗ ╚═╝
██║     ╚██████╔╝╚██████╗██║  ██╗██╗
╚═╝      ╚═════╝  ╚═════╝╚═╝  ╚═╝╚═╝"
echo -e "$(tput sgr0)"
printf "😵  Looks like you committed something you shouldn't have!"
printf "\n"
printf "File to be removed from Git history: "
read filelocation
printf "Removing $filelocation from Git history..."
git filter-branch --force --index-filter 'git rm --cached --ignore-unmatch '"$filelocation" --prune-empty --tag-name-filter cat -- --all
printf "Enter a commit message: "
read message
git add .
git commit -m "'"$message"'"
printf "Done! If this repo exists on Github, be sure to push your changes to Github!"
