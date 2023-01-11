export PATH=${PATH}:~/.local/bin

export EDITOR="nvim"
export VISUAL="nvim"

# XDG Base Directories
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state

export ZDOTDIR="$XDG_CACHE_HOME/zsh"

export HISTFILE="$ZDOTDIR/.zhistory"
export HISTSIZE=10000
export SAVEHIST=10000

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

export NEOVIM_WIN_DIR=/mnt/c/Program\ Files/Neovim

. "$HOME/.cargo/env"
