
function install_aws_sdk() {
  e_header "Installing AWS SDK"
  curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
  unzip awscli-bundle.zip
  ./awscli-bundle/install -b $DOTFILES/bin/aws
  rm -rf ./awscli-bundle
  rm awscli-bundle.zip
  e_header "Installed AWS SDK"
}

function uninstall_aws_sdk() {
  rm -rf $DOTFILES/bin/aws
  e_header "Uninstalled AWS SDK"
}
