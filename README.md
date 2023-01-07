# dotfiles

Add the following custom configs to .bashrc.

```
export PATH=${PATH}:~/.local/bin

export NEOVIM_WIN_DIR=/mnt/c/Program\ Files/Neovim

alias ls='exa -lah'

eval "$(starship init bash)"

alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```
