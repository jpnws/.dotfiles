# dotfiles

Add the following custom configs to .bashrc.

```
export PATH=${PATH}:~/.local/bin

export NEOVIM_WIN_DIR=/mnt/c/Program\ Files/Neovim

alias ls='exa -lah'

eval "$(starship init bash)"

alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

# Notes

If `echo $WSL_DISTRO_NAME` returns something, then we're in WSL.

We can use this variable to conditionally set configs.
