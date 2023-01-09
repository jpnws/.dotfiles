# dotfiles

## os & apps & fonts

Ubuntu, Bash, Neovim, i3wm.

alacritty, starship prompt

Iosevka NF - Download this from my Google Drive.

## add the following custom configs to .bashrc.

```
export PATH=${PATH}:~/.local/bin

export NEOVIM_WIN_DIR=/mnt/c/Program\ Files/Neovim

alias ls='exa -lah'

eval "$(starship init bash)"

alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

## add following config for alacritty.yml

```
font:
  normal:
    family: Iosevka
    style: Regular
  bold:
    family: Iosevka
    style: Bold
  italic:
    family: Iosevka
    style: Italic
  bold_italic:
    family: Iosevka
    style: Bold Italic
```

## Notes

If `echo $WSL_DISTRO_NAME` returns something, then we're in WSL.

We can use this variable to conditionally set configs.

