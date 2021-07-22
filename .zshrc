ln -sf /Users/$USER/projects/zsh-config/gitconfig ~/.gitconfig
NVM_AUTOLOAD=1
eval "$(rbenv init -)"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)"
fi

# Terraform autocomplete
autoload -U +X bashcompinit && bashcompinit
autoload -Uz compinit && compinit
complete -o nospace -C /usr/local/bin/terraform terraform
