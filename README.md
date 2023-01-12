# dotfiles

## os & apps & fonts

arch, alacritty, zsh, starship, dwm, neovim.

Iosevka Nerd Font - Download this from my Google Drive.

## Notes

If `echo $WSL_DISTRO_NAME` returns something, then we're in WSL.

We can use this variable to conditionally set configs.

## Zsh and Starship

Be sure to install the following plugins for zsh manually.

- [zdharma-continuum/fast-syntax-highlighting](https://github.com/zdharma-continuum/fast-syntax-highlighting)
- [zsh-users/zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [marlonrichert/zsh-autocomplete](https://github.com/marlonrichert/zsh-autocomplete)
- [Starship](https://starship.rs/)

Create `.zsh` folder inside the `$HOME` folder.

Make sure to clone the dotfiles to synchronize `~/.zshenv` and `~/.zshrc`.

Besure to have Starship config inside `~/.config/starship` as well.
