$vscode_path = "~\AppData\Roaming\Code\User"
$dotfiles_path = ".\..\"

New-Item -ItemType SymbolicLink -Path $vscode_path -Name settings.json -Value ${dotfiles_path}etc\vscode\settings.json
New-Item -ItemType SymbolicLink -Path $vscode_path -Name snippets -Value ${dotfiles_path}etc\vscode\snippets

$home_path = "~"
New-Item -ItemType SymbolicLink -Path $home_path -Name .gitconfig -Value ${dotfiles_path}.gitconfig
