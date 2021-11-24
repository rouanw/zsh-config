export ZSH="/Users/rouan/.oh-my-zsh"
ZSH_THEME="spaceship"
ZSH_CUSTOM=~/projects/zsh-config/custom

source ~/projects/zsh-config/plugins.zsh
source $ZSH/oh-my-zsh.sh

# node ~/projects/ion/ion

# Created by `userpath` on 2021-02-11 13:15:07
export PATH="$PATH:/Users/rouan/.local/bin"

ln -sf /Users/$USER/projects/zsh-config/gitconfig ~/.gitconfig
ln -sf /Users/$USER/projects/zsh-config/hyper.js ~/.hyper.js
NVM_AUTOLOAD=1
eval "$(rbenv init -)"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)"
fi

# Terraform autocomplete
autoload -U +X bashcompinit && bashcompinit
autoload -Uz compinit && compinit
complete -o nospace -C /usr/local/bin/terraform terraform
