alias reload!='. ~/.zshrc'

alias cls='clear' # Good 'ol Clear Screen command

rgrems() {
  ag "$@" `bundle show --paths`
}
