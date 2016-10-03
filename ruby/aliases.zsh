alias sc='script/console'
alias sg='script/generate'
alias sd='script/destroy'

# Rails gives me carpal
alias app-go='foreman start -f Procfile.dev'
alias app-run='foreman run $@ -f Procfile.dev'
alias app-exec='foreman run -f Procfile.dev bundle exec $@'
alias app-console='app-exec rails console'
app-grep() {
  ag "$@" `bundle show --paths`
}

app-find() {
  find `bundle show --paths` -name "$@"
}

app-help() {
  alias app-go
  alias app-run
  alias app-exec
  which app-grep
  which app-find
}

# Various search helpers on bundled gems
