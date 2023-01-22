#!/bin/zsh

eval "$(starship init zsh)"

alias ls="exa -lah"

alias config="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

alias winhome="cd /mnt/c/users/ji.park"

source $ZSH/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $ZSH/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source $ZSH/zsh-autosuggestions/zsh-autosuggestions.zsh

bindkey '^ ' autosuggest-accept

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
