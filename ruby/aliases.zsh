alias sc='script/console'
alias sg='script/generate'
alias sd='script/destroy'

# Rails gives me carpal
alias app-go='foreman start -f Procfile.dev'
alias app-run='foreman run $@ -f Procfile.dev'
alias app-exec='foreman run -f Procfile.dev bundle exec $@'
alias app-console='app-exec rails console'

# Various search helpers on bundled gems

function app-grep() {
  ag "$@" `bundle show --paths`
}

function app-find() {
  find `bundle show --paths` -name "$@"
}

function app-help() {
  alias app-go
  alias app-run
  alias app-exec
  which app-grep
  which app-find
}

function up() {
  git up
  bundle install
  bundle exec rake db:migrate
  bundle exec rake dev:frontend
}
