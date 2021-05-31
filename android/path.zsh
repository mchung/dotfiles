# Android Studio
# Setup Type: Standard
# SDK Folder: /Users/marc/Library/Android/sdk
# JDK Location: /Applications/Android Studio.app/Contents/jre/jdk/Contents/Home
# Total Download Size: 1.67 GB
# SDK Components to Download:
if [ -d "$HOME/Library/Android/sdk" ]; then
  export ANDROID_HOME=$HOME/Library/Android/sdk
  export PATH=$PATH:$ANDROID_HOME/tools
  export PATH=$PATH:$ANDROID_HOME/platform-tools
fi
