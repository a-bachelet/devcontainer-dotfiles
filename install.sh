mkdir -p $HOME/.local/bin

sh -c "$(curl -fsLS get.chezmoi.io)" -- -b $HOME/.local/bin

$HOME/.local/bin/chezmoi apply --force
