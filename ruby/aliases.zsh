# Rails gives me carpal
alias app-go='foreman start -f Procfile.dev' # start the dev env
alias app-run='foreman run $@ -f Procfile.dev' # 'app-run web' starts the web process
alias app-exec='foreman run bundle exec $@' # 'app-exec cmd args' loads entire env
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
  which app-kill
}

function app-kill() {
  echo "Sending SIGKILL to node/puma processes"
  ps aux | grep 'node' | grep 'hot' | awk '{print $2}' | xargs kill -9
  ps aux | grep 'puma' | grep 'handshake' | awk '{print $2}' | xargs kill -9
}

function up() {
  git up
  bundle install
  bundle exec rake db:migrate
  bundle exec rake dev:frontend
}

# $ heroku_console heroku-slug-name
function heroku_console() {
  echo "Connecting to $@ on first KNOCKOFF_REPLICA_ENVS url"
  first_follower=`heroku config:get KNOCKOFF_REPLICA_ENVS -a $@ | cut -f 1 -d ","`
  heroku run DATABASE_URL=`heroku config:get $first_follower -a $@` rails console -a $@
}
