source $DOTFILES/source/60_php.sh

if [[ "$(type -P composer)" ]]; then
  composer_global_install
fi