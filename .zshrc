# Add in helpful aliases
if [ -f ~/.aliases.sh ]; then
  source ~/.aliases.sh
fi

# Add environment variables
if [ -f ~/.env.sh ]; then
  source ~/.env.sh
fi

# Add in helpful functions
if [ -f ~/.functions.sh ]; then
  source ~/.functions.sh
fi

# Load additional libraries
if [ -f ~/.hooks.sh ]; then
  source ~/.hooks.sh
fi

# Load Antigen configurations
antigen init ~/.antigenrc

# Set the auto-complete on ssh to fill in the aliases
zstyle ':completion:*:(ssh|scp|ftp|sftp):*' hosts $hosts
