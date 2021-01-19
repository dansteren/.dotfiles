# Loads plugins that need to be configured at shell load

# Load Antigen. See https://github.com/zsh-users/antigen
# Note: antigen was installed via homebrew
if [ -f /usr/local/share/antigen/antigen.zsh ]; then
  source /usr/local/share/antigen/antigen.zsh
else
  echo "WARN: antigen not installed. Install with brew install antigen."
fi

if command -v rbenv > /dev/null 2>&1; then
  # Autoload rbenv. See https://github.com/rbenv/rbenv
  eval "$(rbenv init -)"
fi

# Load NVM
if [ -d "$HOME/.nvm" ]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
else
  echo "WARN: nvm not installed. See https://github.com/nvm-sh/nvm#installing-and-updating"
fi

if command -v direnv > /dev/null 2>&1; then
  # Enable direnv. See https://direnv.net/
  # Make sure to create a .envrc file in any directories where this is used
  eval "$(direnv hook zsh)"
fi
