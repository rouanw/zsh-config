# zmodload zsh/zprof # Uncomment and run `zprof` to do some profiling

export ZSH="/Users/rouan/.oh-my-zsh"
ZSH_THEME="spaceship"
ZSH_CUSTOM=~/projects/zsh-config/custom

source ~/projects/zsh-config/plugins.zsh
source $ZSH/oh-my-zsh.sh

export PATH="$PATH:/Users/rouan/.local/bin"

ln -sf /Users/$USER/projects/zsh-config/gitconfig ~/.gitconfig
ln -sf /Users/$USER/projects/zsh-config/hyper.js ~/.hyper.js

NVM_AUTOLOAD=1
NVM_LAZY=1

# Uncomment when you're using Ruby
# eval "$(rbenv init -)"

# Uncomment when you're using Python
# if command -v pyenv 1>/dev/null 2>&1; then
#   eval "$(pyenv init --path)"
# fi

# Uncomment when you're using Ruby Terraform
# autoload -U +X bashcompinit && bashcompinit
# autoload -Uz compinit && compinit
# complete -o nospace -C /usr/local/bin/terraform terraform
