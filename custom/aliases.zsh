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
timezsh() {
  shell=${1-$SHELL}
  for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
}
alias timezsh=timezsh

bookmark_with_cd_args() {
  name=$1
  path=`pwd`
  cdargs --add=:$1:`pwd`
}
alias bookmark=bookmark_with_cd_args $1

alias please=": &&"

alias flip="echo \"\n\n\n\n(╯°□°）╯︵ ┻━┻\n\n\n\n\""

alias dark_mode="osascript -e 'tell app \"System Events\" to tell appearance preferences to set dark mode to not dark mode'"

alias path="sed 's/:/\n/g' <<< \"$PATH\""
alias untar="tar -xvf"

# productivity
alias todo="code \"$HOME/Google Drive\"/todo.yml"
alias podo="code \"$HOME/Google Drive\"/podo.yml"
alias pomodoro="date && sleep 1500 && osascript -e 'display notification \"Pomodoro completed\" with title \"Pomodoro completed\" sound name \"Submarine\"' && echo pomodoro completed && date"

alias pomodoro_break="date && sleep 300 && osascript -e 'display notification \"Break over\" with title \"Break over\" sound name \"Submarine\"' && echo break completed && date"

alias pomodoro_long_break="date && sleep 1200 && osascript -e 'display notification \"Long break over\" with title \"Break over\" sound name \"Submarine\"' && echo long break completed && date"

alias pomodoro_snooze="date && sleep 120 && osascript -e 'display notification \"Snooze complete\" with title \"Let it go\" sound name \"Submarine\"' && echo snooze completed"

alias space="docker system prune --volumes && brew cleanup && rm -r ~/Library/Caches/com.spotify.client && rm -r ~/Library/Caches/Yarn"

# git
alias g="git"
alias gitconfig="vi .git/config"
alias submodulepull="git submodule foreach git pull --ff-only"

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

# infra
docker_login() {
  prefix=$1
  docker exec -t -i `docker ps | grep $prefix | awk '{print $1}'` bash
}
alias dl=docker_login
prune_dangling_images() {
 docker rmi $(docker images -f "dangling=true" -q)
}
alias docker_prune=prune_dangling_images
docker_container_clean() {
  docker container stop $(docker container ls -aq)
  docker container rm $(docker container ls -aq)
}
alias d_clean_containers=docker_container_clean

alias docker_restart="osascript -e 'quit app \"Docker\"' && open -a Docker"

alias tf=terraform
alias k=kubectl

k8s_login() {
  pod=$1
  kubectl exec --stdin --tty $1 -- /bin/sh
}
alias kl=k8s_login

alias lws="aws --endpoint-url http://localhost:4566 --profile localstack"
alias localstack="docker run --rm -it -p 4566:4566 -p 4571:4571 localstack/localstack"

# mobile
alias rn="react-native"

# personal
alias finances="cd ~/projects/finances && open http://localhost:8000/finances.html && simpleserver"
