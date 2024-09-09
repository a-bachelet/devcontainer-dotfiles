source $HOME/.antigen.zsh

antigen use oh-my-zsh
antigen bundle git
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen theme robbyrussell
antigen apply

eval "$(starship init zsh)"
