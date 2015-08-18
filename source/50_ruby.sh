export PATH

# rbenv init.
PATH="$(path_remove $DOTFILES/vendor/rbenv/bin):$DOTFILES/vendor/rbenv/bin"

if [[ "$(type -P rbenv)" && ! "$(type -t _rbenv)" ]]; then
  eval "$(rbenv init -)"
fi

#!/usr/bin/env bash
#
# Originally from https://gist.github.com/IanVaughan/2902499
#
# authors: Ian Vaughan
#          Jacob Zimmerman
#          Austin Rivas
#
# usage:   uninstall_gems [<version> ...]
#
# examples:
#   Uninstall all gems in all ruby version
#       uninstall_gems
#
#   Uninstall all gems in ruby 2.1.3
#       uninstall_gems 2.1.3
#
#   Uninstall all gems in the current ruby version
#       uninstall_gems $(rbenv version-name)

function uninstall_gems() {

  if [ "$1" ]; then
    RUBIES="$1"
  else
    #rbenv versions --bare
    RBENVPATH=`rbenv root`
    echo $RBENVPATH
    RUBIES=`ls $RBENVPATH/versions`
  fi

  for ruby in $RUBIES; do
    echo '---------------------------------------'
    echo $ruby
    rbenv local $ruby
    list=`gem list --no-versions`
    for gem in $list; do
      gem uninstall $gem -aIx
    done
    gem install bundler
  done

  rm ./.ruby-version

}
