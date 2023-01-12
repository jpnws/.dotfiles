export PATH=${PATH}:~/.local/bin

export EDITOR="nvim"
export VISUAL="nvim"

# XDG Base Directories
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state

export ZSH=$HOME/.zsh

export HISTSIZE=10000
export SAVEHIST=10000

setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

export NEOVIM_WIN_DIR=/mnt/c/Program\ Files/Neovim

. "$HOME/.cargo/env"

# If using Ubuntu. Necessary for marlonrichert/zsh-autocomplete plugin.
skip_global_compinit=1
