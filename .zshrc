# zmodload zsh/zprof # Uncomment and run `zprof` to do some profiling

export ZSH="/Users/rouan/.oh-my-zsh"
SPACESHIP_KUBECTL_SHOW=true
SPACESHIP_KUBECTL_VERSION_SHOW=false
ZSH_THEME="spaceship"
ZSH_CUSTOM=~/projects/zsh-config/custom
setopt HIST_IGNORE_SPACE
eval "$(fnm env --use-on-cd)"

source ~/projects/zsh-config/plugins.zsh
source $ZSH/oh-my-zsh.sh

export PATH="$PATH:/Users/rouan/.local/bin:/Users/rouan/.software-bin/bin:/Users/rouan/go/bin:/Applications/WebStorm.app/Contents/MacOS:/Users/rouan/Library/Android/sdk/platform-tools"

ln -sf /Users/$USER/projects/zsh-config/gitconfig ~/.gitconfig
ln -sf /Users/$USER/projects/zsh-config/hyper.js ~/.hyper.js

# Uncomment when you're using Ruby
# eval "$(rbenv init -)"

# Uncomment when you're using Python
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Uncomment when you're using Terraform
# autoload -U +X bashcompinit && bashcompinit
# autoload -Uz compinit && compinit
# complete -o nospace -C /usr/local/bin/terraform terraform
