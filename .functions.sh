# General

# Improve ls. I don't care about Icon? and .DS_Store files.
# Something about the removing icon and ds_store doesn't work with zsh
# function ll { ls -Alh $@ | grep -v -e .DS_Store -e Icon?; }
# function ll { ls -Alh $@ }
function ll { ls -Alh $@ | awk '$NF!=".DS_Store"' }

# Make a directory and cd into it.
mkcd() {
  mkdir $1
  cd $1
}

# Docker

# Docker shell. Drops into a bash terminal inside the container provided
# as the argument. e.g. dsh postgresql_01
dsh() {
  docker exec -it $1 /bin/bash
}

# Change to the root directory of a repo
cdr() {
  root_path=$(git rev-parse --show-toplevel)
  cd $root_path
}
