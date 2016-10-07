touch .gitignore
echo "bin\nobj\n.suo\npackages\n.DS_Store\nproject.lock.json\n.vscode" >> .gitignore
dotnet new
dotnet restore
