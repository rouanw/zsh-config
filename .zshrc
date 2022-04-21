# zmodload zsh/zprof # Uncomment and run `zprof` to do some profiling

export ZSH="/Users/rouan/.oh-my-zsh"
SPACESHIP_KUBECTL_SHOW=true
SPACESHIP_KUBECTL_VERSION_SHOW=false
ZSH_THEME="spaceship"
ZSH_CUSTOM=~/projects/zsh-config/custom
NVM_AUTOLOAD=1

source ~/projects/zsh-config/plugins.zsh
source $ZSH/oh-my-zsh.sh

export PATH="$PATH:/Users/rouan/.local/bin:/Users/rouan/.software-bin/bin"

ln -sf /Users/$USER/projects/zsh-config/gitconfig ~/.gitconfig
ln -sf /Users/$USER/projects/zsh-config/hyper.js ~/.hyper.js

# Uncomment when you're using Ruby
# eval "$(rbenv init -)"

# Uncomment when you're using Python
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)"
fi

# Uncomment when you're using Terraform
# autoload -U +X bashcompinit && bashcompinit
# autoload -Uz compinit && compinit
# complete -o nospace -C /usr/local/bin/terraform terraform
