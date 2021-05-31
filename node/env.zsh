# if [[ -a /usr/local/bin/nvm ]]; then
#   export NODE_PATH="$(npm root -g)" # Node can now reference global packages

#   if [[ -a /usr/local/opt/nvm/nvm.sh ]]; then
#     export NVM_DIR="$HOME/.nvm"
#     . "/usr/local/opt/nvm/nvm.sh"
#   fi

#   if [[ -a /usr/local/bin/n ]]; then
#     n 0.12.1
#   fi
#   autoload -U add-zsh-hook
#   load-nvmrc() {
#     local node_version="$(nvm version)"
#     local nvmrc_path="$(nvm_find_nvmrc)"

#     if [ -n "$nvmrc_path" ]; then
#       local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

#       if [ "$nvmrc_node_version" = "N/A" ]; then
#         nvm install
#       elif [ "$nvmrc_node_version" != "$node_version" ]; then
#         nvm use
#       fi
#     elif [ "$node_version" != "$(nvm version default)" ]; then
#       echo "Reverting to nvm default version"
#       nvm use default
#     fi
#   }
#   add-zsh-hook chpwd load-nvmrc
#   load-nvmrc
# fi
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
