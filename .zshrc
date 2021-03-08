ln -sf /Users/$USER/projects/zsh-config/gitconfig ~/.gitconfig
NVM_AUTOLOAD=1
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
