$path = "~\AppData\Roaming\Code\User"

New-Item -ItemType SymbolicLink -Path $path -Name settings.json -Value .\vscode\settings.json
New-Item -ItemType SymbolicLink -Path $path -Name snippets -Value .\vscode\snippets