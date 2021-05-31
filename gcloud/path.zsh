if [[ -a $HOME/workspace/google-cloud-sdk ]]; then
  export GOOGLE_CLOUD=$HOME/workspace/google-cloud-sdk

  # The next line updates PATH for the Google Cloud SDK.
  source $GOOGLE_CLOUD/path.zsh.inc

  # The next line enables shell command completion for gcloud.
  source $GOOGLE_CLOUD/completion.zsh.inc
fi
