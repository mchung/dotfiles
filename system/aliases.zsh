# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
  # alias httpdump="sudo tcpdump -i en0 -n -s 0 -w - | grep -a -o -E 'Host\: .*|GET \/.*'"
  # alias postdump="sudo tcpdump -i en0 -n -s 0 -w - | grep -a -o -E 'Host\: .*|POST \/.*'"
  # alias lh="ls -lha"
  # alias lk="ls -latr"
fi

# alias win_host="sudo ghost list | awk '{gsub(/127.0.0.1/,"192.168.1.203")} 1' | awk '{print $3 "\t" $1}'"
# alias apinfo='/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport -I'
# alias git=hub
# alias scurl='webkit2png -F $1'
alias apinfo="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport -I"
# alias chrome='cd /tmp && /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --proxy-server="socks://127.0.0.1:9050;socks4a://127.0.0.1:9050;socks5://127.0.0.1:9050;socks4://127.0.0.1:9050" --disable-java --enable-strict-site-isolation --disable-geolocation --incognito --user-data-dir=/tmp/chrome --utility --utility-allowed-dir=/tmp/chrome --dns-prefetch-disable --disable-sync --bwsi --disable-full-history-sync --no-first-run check.torproject.org && rm -rf chrome && cd -'
# alias chrome='cd /tmp && /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --proxy-server="socks://127.0.0.1:9150;socks4a://127.0.0.1:9150;socks5://127.0.0.1:9150;socks4://127.0.0.1:9150" --disable-java --enable-strict-site-isolation --disable-geolocation --incognito --user-data-dir=/tmp/chrome --utility --utility-allowed-dir=/tmp/chrome --dns-prefetch-disable --disable-sync --bwsi --disable-full-history-sync --no-first-run check.torproject.org && rm -rf chrome && cd -'
# alias chrome='cd /tmp && /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --proxy-server="127.0.0.1:9050" --disable-java --enable-strict-site-isolation --disable-geolocation --incognito --user-data-dir=/tmp/chrome --utility --utility-allowed-dir=/tmp/chrome --dns-prefetch-disable --disable-sync --bwsi --disable-full-history-sync --no-first-run check.torproject.org && rm -rf chrome && cd -'
# alias chrome='cd /tmp && /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --proxy-server="127.0.0.1:9150" --disable-java --enable-strict-site-isolation --disable-geolocation --incognito --user-data-dir=/tmp/chrome --utility --utility-allowed-dir=/tmp/chrome --dns-prefetch-disable --disable-sync --bwsi --disable-full-history-sync --no-first-run check.torproject.org && rm -rf chrome && cd -'

# HOSTS=("news.ycombinator.com" "slashdot.org" "www.reddit.com" "reddit.com" "twitter.com" "tcbreview.com" "techcrunch.com" "www.facebook.com" "facebook.com" "haikuist.com" "plus.google.com")
# function focus() {
#    for name in "${HOSTS[@]}"
#    do
#      ghost add $name 127.0.0.1
#    done
# }
#
# function relax() {
#    for name in "${HOSTS[@]}"
#    do
#      ghost delete $name
#    done
# }
#
# function new_rails() {
#   mkdir $1
#   ruby=$(rvm list | grep "=>" | awk '{print $2}')
#   echo "rvm --create $ruby@$1" > $1/.rvmrc
#   cd $1
#   gem install rails
# }
#
