# NOTE: If you want to make an alias available anywhere in your command
# alias -g ll='ls -Alh'

# IP Address
alias whatsmyip="curl ipinfo.io/ip"

# Docker
alias dvm='docker run --rm -it -v /:/docker alpine:edge'
alias dc='docker-compose'

# Dotfiles
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"
alias dot="dotfiles"

# Kubernetes
alias k='kubectl'

# Ruby on Rails
alias rc='bundle exec rails console'
alias rs='bundle exec rails server'
