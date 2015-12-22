source $DOTFILES/source/60_aws_sdk.sh

if [[ "$(type -P aws)" ]]; then
  install_aws_sdk()
fi
