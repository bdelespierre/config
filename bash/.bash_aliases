
# -----------------------------------------------------------------------------
# ONE CHAR
# -----------------------------------------------------------------------------
#
alias c='composer'
alias e='echo -e'
alias g='git'
alias h='history | tail -n 10'
alias j='jobs'
alias l='ll'
alias m='mysql -h localhost -p'
alias n='node'
alias p='/usr/bin/env php'
alias t='tmux'
alias y='yokadi --'
alias v='vim'

# -----------------------------------------------------------------------------
# LS
# -----------------------------------------------------------------------------
#
alias ll='ls -lhF --color --group-directories-first'
alias la='ll -A'

# -----------------------------------------------------------------------------
# GREP
# -----------------------------------------------------------------------------
#
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# -----------------------------------------------------------------------------
# GIT
# -----------------------------------------------------------------------------

alias git-current-branch='git rev-parse --abbrev-ref HEAD'
alias gcb='git-current-branch'
alias gpu='git pull upstream `git-current-branch`'
alias gru='git remote update && git reset --hard upstream/`git-current-branch`'
alias gpo='git pull origin `git-current-branch`'
alias gro='git remote update && git reset --hard origin/`git-current-branch`'

# -----------------------------------------------------------------------------
# TMUX
# -----------------------------------------------------------------------------
#
alias ta='tmux a -t'
alias tn='tmux new -s'
alias tls='tmux ls'
alias tequila='tmux ls | grep : | cut -d: -f1 | xargs tmux kill-session -t'

# -----------------------------------------------------------------------------
# PHP
# -----------------------------------------------------------------------------
#
alias lint='find . -name "*.php" -print0 | xargs -0 -n1 -P8  php -l | grep -v "No syntax errors detected"'
alias pa='php artisan'
alias tinker='php artisan tinker'
alias serve='php artisan serve >/dev/null 2>&1 &'
alias logs='tail -F storage/logs/laravel.log'

# -----------------------------------------------------------------------------
# DOCKER
# -----------------------------------------------------------------------------
#
alias dc='docker-compose'
alias dcu='docker-compose up'
alias dcb='docker-compose build'
alias dcd='docker-compose up --build -d'

# -----------------------------------------------------------------------------
# HEROKU
# -----------------------------------------------------------------------------
#
alias hlog='heroku logs'
alias hrun='heroku run'
alias hbuild='heroky buildpacks'

# -----------------------------------------------------------------------------
# AWK
# -----------------------------------------------------------------------------
#
alias col1='awk '"'"'{print $1}'"'"''
alias col2='awk '"'"'{print $2}'"'"''
alias col3='awk '"'"'{print $3}'"'"''
alias col4='awk '"'"'{print $4}'"'"''
alias col5='awk '"'"'{print $5}'"'"''

# -----------------------------------------------------------------------------
# MISC
# -----------------------------------------------------------------------------
#
alias ..='cd ..'
alias -- -='cd -'
alias less='less -R'
alias path='echo $PATH | sed -e "s/:/\n/g" -e "s|${HOME}|~|g"'
alias lurk-more='history -c && clear && printf "\e[3J"'
alias python-server='python -m SimpleHTTPServer 8080'
alias wclone='wget --random-wait -H -r -p -b -S -k -e robots=off -U mozilla -a /tmp/wclone.log --limit-rate=100k'
alias clock='while sleep 0.5;do tput sc;tput cup 0 $(($(tput cols)-10)); tput setaf 7; date +"[%T]";tput rc;done &'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias clipboard='xse l--clipboard'
alias tree='ls -R | grep ":$" |sed -e "s/:$//" -e "s/[^-][^\/]*\//--/g" -e "s/^/   /" -e "s/-/|/"'
alias favs='history | awk '\''{a[$2]++}END{for(i in a){print a[i] " " i}}'\'' | sort -rn | head'
