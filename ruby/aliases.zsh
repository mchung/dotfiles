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

# $ heroku_console heroku-slug-name
function heroku_console() {
  echo "Connecting to $@ on FOLLOWER_DATABASE_URL"
  heroku run DATABASE_URL=`heroku config:get FOLLOWER_DATABASE_URL -a $@` rails console -a $@
}
