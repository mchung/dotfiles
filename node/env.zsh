export NODE_PATH="$(npm root -g)" # Node can now reference global packages

if [[ -a /usr/local/opt/nvm/nvm.sh ]]; then
  export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"
fi

if [[ -a /usr/local/bin/n ]]; then
  n 0.12.1
fi
