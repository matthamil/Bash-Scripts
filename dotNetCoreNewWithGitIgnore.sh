# Set an alias in .zshrc as follows:
# alias dotnetnew=dotNetWithGitIgnore
function dotNetWithGitIgnore {
  touch .gitignore
  echo >> "bin\nobj\n.suo\npackages\n.DS_Store\nproject.lock.json\n.vscode" >> .gitignore
  dotnet new
  dotnet restore
}
