# init according to man page
if (( $+commands[rbenv] ))
then
  export RBENV_ROOT=$HOME/.rbenv
  export PATH="$RBENV_ROOT/bin:$PATH"
  eval "$(rbenv init -)"

  # Allow local Gem management
  # export GEM_HOME="$HOME/.gem"
  # export GEM_PATH="$HOME/.gem"
  # export PATH="$HOME/.gem/bin:$PATH"
fi
