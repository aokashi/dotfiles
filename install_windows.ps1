$vscode_path = "~\AppData\Roaming\Code\User"
New-Item -ItemType SymbolicLink -Path $vscode_path -Name settings.json -Value .\vscode\settings.json
New-Item -ItemType SymbolicLink -Path $vscode_path -Name snippets -Value .\vscode\snippets

$home_path = "~"
New-Item -ItemType SymbolicLink -Path $home_path -Name .gitconfig -Value .gitconfig