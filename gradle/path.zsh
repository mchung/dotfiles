if [ -d "$HOME/Tools/gradle" ]; then
  export GRADLE_HOME="$HOME/Tools/gradle"
  export PATH=$PATH:$GRADLE_HOME/bin
fi
