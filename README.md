# Bash-Scripts

This repo contains a list of bash scripts I have written to make life as a developer a little bit easier. Feel free to download and use any of these scripts as you please.

## Usage

Download the script of your choice. I recommend setting an `alias` within your `.zshrc` (or `.bashrc` if you do not have [oh-my-zsh](http://ohmyz.sh/) installed) like so:

```bash
alias mynewalias="bash location/to/script.sh"
```

Run `mynewalias` in your terminal to see it in action.

##Table of Contents

* [Angular 1 Boilerplate](https://github.com/matthamil/Bash-Scripts#angular-1-boilerplate)
* [Angular 1 Webpack Boilerplate](https://github.com/matthamil/Bash-Scripts#angular-1-webpack-boilerplate)
* [Create a Github Repo from the Terminal](https://github.com/matthamil/Bash-Scripts#create-a-github-repo-from-the-terminal)
* [Create a new .NETCore app with a .gitignore](https://github.com/matthamil/Bash-Scripts#create-a-new-netcore-app-with-a-gitignore)
* [Remove a file from Git history](https://github.com/matthamil/Bash-Scripts#remove-a-file-from-git-history)

---

## Angular 1 Boilerplate
#### [boilerplate.sh](https://github.com/matthamil/Bash-Scripts/blob/master/boilerplate.sh)

Downloads my personal [Angular 1 boilerplate](https://github.com/matthamil/Angular-Boilerplate).

Run the script:

`curl -s https://raw.githubusercontent.com/matthamil/Bash-Scripts/master/boilerplate.sh | bash`

## Angular 1 Webpack Boilerplate
#### [ngwebpack.sh](https://github.com/matthamil/Bash-Scripts/blob/master/ngwebpack.sh)

Downloads my [Angular 1 with Webpack boilerplate](https://github.com/matthamil/Angular1Webpack) into the current directory.

Run the script:

`curl -s https://raw.githubusercontent.com/matthamil/Bash-Scripts/master/ngwebpack.sh | bash`

## Create a Github Repo from the Terminal
#### [githubRepoMaker.sh](https://github.com/matthamil/Bash-Scripts/blob/master/githubRepoMaker.sh)

Creates a new repo for the current directory with a name and description.

Run the script:
`curl -s https://raw.githubusercontent.com/matthamil/Bash-Scripts/master/githubRepoMaker.sh | bash`

## Create a new .NETCore app with a .gitignore
#### [dotNetCoreNewWithGitIgnore.sh](https://github.com/matthamil/Bash-Scripts/blob/master/dotNetCoreNewWithGitIgnore.sh)

Creates a new .NETCore application within the current directory with a .gitignore for commonly ignored .NETCore files.

Run the script:

`curl -s https://raw.githubusercontent.com/matthamil/Bash-Scripts/master/dotNetCoreNewWithGitIgnore.sh | bash`

## Remove a file from Git History
#### [gitoops.sh](https://github.com/matthamil/Bash-Scripts/blob/master/gitoops.sh)

Removes a file from Git history. Prompts the user to make a new commit to save Git history changes.

NOTE: Download the script locally to run it. Curl command removed from README due to weird bugs.

## Contributing

Feel free to fork this repo and add your own contribution. Please create a new branch `git checkout -b your-script-name` before submitting a pull request.
