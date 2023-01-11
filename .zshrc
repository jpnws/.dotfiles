export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=${PATH}:~/.local/bin

export NEOVIM_WIN_DIR=/mnt/c/Program\ Files/Neovim

alias ls='exa -lah'

eval "$(starship init zsh)"

alias d='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

. "$HOME/.cargo/env"

alias winhome="cd /mnt/c/users/ji.park"
