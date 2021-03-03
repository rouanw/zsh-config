# get here

alias myalias="vi ~/projects/zsh-config/custom/aliases.zsh"
alias mygitconfig="vi ~/projects/zsh-config/gitconfig.zsh"

# python
alias simpleserver="python -m http.server"

# general
copy_path_to_clipboard() {
  echo -n ${PWD}| pbcopy
}
alias copypath=copy_path_to_clipboard
alias bashprofile="vi ~/.bash_profile"
alias terminal="open -a Terminal "`pwd`""
alias ff="grep -rnw --exclude-dir={node_modules,dist,.git} . -e $1"

bookmark_with_cd_args() {
  name=$1
  path=`pwd`
  cdargs --add=:$1:`pwd`
}
alias bookmark=bookmark_with_cd_args $1

alias please=": &&"

alias dark_mode="osascript -e 'tell app \"System Events\" to tell appearance preferences to set dark mode to not dark mode'"

# productivity
alias todo="code \"/Users/Rouan/Google Drive\"/todo.yml"
alias podo="code \"/Users/Rouan/Google Drive\"/podo.yml"
alias pomodoro="date && sleep 1500 && osascript -e 'display notification \"Pomodoro completed\" with title \"Pomodoro completed\" sound name \"Submarine\"' && echo pomodoro completed && date"

alias pomodoro_break="date && sleep 300 && osascript -e 'display notification \"Break over\" with title \"Break over\" sound name \"Submarine\"' && echo break completed && date"

alias pomodoro_long_break="date && sleep 1200 && osascript -e 'display notification \"Long break over\" with title \"Break over\" sound name \"Submarine\"' && echo long break completed && date"

alias pomodoro_snooze="date && sleep 120 && osascript -e 'display notification \"Snooze complete\" with title \"Let it go\" sound name \"Submarine\"' && echo snooze completed"

alias space="docker system prune --volumes && brew cleanup && rm -r ~/Library/Caches/com.spotify.client && rm -r ~/Library/Caches/Yarn"

# git
alias g="git"
alias gitconfig="vi .git/config"
alias submodulepull="git submodule foreach git pull --ff-only"

# github
open_on_github() {
  app="$(basename `pwd`)"
  user=${1:-"rouanw"}
  open https://github.com/${user}/${app}
}
alias gh_open=open_on_github $1

# npm
open_on_npm() {
  app="$(basename `pwd`)"
  open https://www.npmjs.com/package/${app}
}
alias n_open=open_on_npm

alias upgrade_npm="nvm ls --no-colors | grep -v -E -e '.+->' | sed 's/[-*> ]//g' | while read in; do nvm exec "$in" npm i -g npm; done"

# node
alias n="npm"

restart_pm2_app() {
  app="$(basename `pwd`)"
  npm run build-assets && pm2 restart $app && pm2 logs $app
}
alias pmapprestart=restart_pm2_app

restart_pm2_svc() {
  app="$(basename `pwd`)"
  pm2 restart $app && pm2 logs $app
}
alias pmsvcrestart=restart_pm2_svc

alias httpstatuscode="node --print \"http.STATUS_CODES\" | grep ${1}"
alias httpstatuscodes="node --print \"http.STATUS_CODES\""

npm_run_in_sub_directories() {
  command=$1
  for d in ./*/ ; do (grep -q $command "${d}/package.json" && cd "$d" && npm run $command); done
}
alias nrun_d=npm_run_in_sub_directories

# docker
docker_login() {
  prefix=$1
  docker exec -t -i `docker ps | grep $prefix | awk '{print $1}'` bash
}
alias dl=docker_login
prune_dangling_images() {
 docker rmi $(docker images -f "dangling=true" -q)
}
alias docker_prune=prune_dangling_images

alias docker_restart="osascript -e 'quit app \"Docker\"' && open -a Docker"

# poem of the day
alias poemoftheday="rsstail -u http://feeds.poetryfoundation.org/PoetryFoundation/PoemOfTheDayText -1 -d -n 1 -N | html2text -utf8 | sed '/^ Poem of the Day/ s/$/ &\'$'\n/'
"
alias poemsnippet="rsstail -u http://feeds.poetryfoundation.org/PoetryFoundation/PoemOfTheDayText -1 -d -n 1 -N | html2text -utf8 | head -5 | tail +2"

# personal
alias finances="cd ~/projects/finances && open http://localhost:8000/finances.html && simpleserver"
