alias d='docker $*'
alias d-c='docker-compose $*'

alias dup="eval '$(docker-machine env default)'"
alias drm="docker rm"
alias dps="docker ps"

alias ubuntu="docker run --rm -it ubuntu /bin/bash"

# Delete all containers
# docker rm $(docker ps -a -q)
# # Delete all images
# docker rmi $(docker images -q)
