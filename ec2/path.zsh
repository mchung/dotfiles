if [ -d "$HOME/Tools/ec2-api-tools" ]; then
  export EC2_HOME="$HOME/Tools/ec2-api-tools"
  export PATH=$PATH:$EC2_HOME/bin
fi
