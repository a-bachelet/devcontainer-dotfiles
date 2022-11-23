mkdir -p $HOME/.local/bin

sh -c "$(curl -fsLS get.chezmoi.io)" -- -b $HOME/.local/bin

cd $HOME/.local/bin

chezmoi init https://github.com/a-bachelet/dotfiles.git

chezmoi apply --force