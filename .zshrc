eval "$(starship init zsh)"

alias ls="exa -lah"

alias config="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

alias winhome="cd /mnt/c/users/ji.park"

source $ZSH/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
# source $ZSH/zsh-autocomplete/zsh-autocomplete.plugin.zsh
# source $ZSH/zsh-autosuggestions/zsh-autosuggestions.zsh

# bindkey "^ " autosuggest-accept
