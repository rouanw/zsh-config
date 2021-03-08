# zsh-config
Dotfiles for zsh

- Install https://ohmyz.sh/.
- Clone this repo
- Edit the following bits in `~/.zshrc`:
  - Uncomment the `ZSH_CUSTOM` bit and change it to something like `ZSH_CUSTOM=~/projects/zsh-config/custom` (using wherever you cloned this repo as the base)
  - Replace the line that loads plugins with `source ~/projects/zsh-config/plugins.zsh`
  - Add `source $ZSH/oh-my-zsh.sh` underneath
  - Add `source ~/projects/zsh-config/.zshrc` right at the top

- Install https://github.com/denysdovhan/spaceship-prompt
