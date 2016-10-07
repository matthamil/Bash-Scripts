#Bash-Scripts

This repo contains a list of bash scripts I have written to make life as a developer a little bit easier. Feel free to download and use any of these scripts as you please.

## Usage

Download the script of your choice. I recommend setting an `alias` within your `.zshrc` (or `.bashrc` if you do not have [oh-my-zsh](http://ohmyz.sh/) installed) like so:

```
alias mynewalias="bash location/to/script.sh"
```

Run `mynewalias` in your terminal to see it in action.

###Table of Contents

* [Angular Boilerplate](https://github.com/matthamil/Bash-Scripts#angular-boilerplate)
* [Create a Github Repo from the Terminal](https://github.com/matthamil/Bash-Scripts#create-a-github-repo-from-the-terminal)
* [Create a new .NETCore app with a .gitignore](https://github.com/matthamil/Bash-Scripts#create-a-new-netcore-app-with-a-gitignore)

##Angular Boilerplate
####[boilerplate.sh](https://github.com/matthamil/Bash-Scripts/blob/master/boilerplate.sh)

Downloads my personal Angular boilerplate and prompts to create a new repo on Github with a name and description.

##Create a Github Repo from the Terminal
####[githubRepoMaker.sh](https://github.com/matthamil/Bash-Scripts/blob/master/githubRepoMaker.sh)

Creates a new repo for the current directory with a name and description.

##Create a new .NETCore app with a .gitignore
####[dotNetCoreNewWithGitIgnore.sh](https://github.com/matthamil/Bash-Scripts/blob/master/dotNetCoreNewWithGitIgnore.sh)

Creates a new .NETCore application within the current directory with a .gitignore for commonly ignored .NETCore files.

##Contributing

Feel free to fork this repo and add your own contribution. Please create a new branch `git checkout -b your-script-name` before submitting a pull request.
