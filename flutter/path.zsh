if [ -d "$HOME/workspace/flutter" ]; then
  export FLUTTER_HOME="$HOME/workspace/flutter"
  export PATH=$PATH:$FLUTTER_HOME/bin
fi
