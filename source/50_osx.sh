# OSX-only stuff. Abort if not OSX.
is_osx || return 1

# APPLE, Y U PUT /usr/bin B4 /usr/local/bin?!
PATH="/usr/local/bin:$(path_remove /usr/local/bin)"
export PATH

# Trim new lines and copy to clipboard
alias c="tr -d '\n' | pbcopy"

# Make 'less' more.
[[ "$(type -P lesspipe.sh)" ]] && eval "$(lesspipe.sh)"

# Start ScreenSaver. This will lock the screen if locking is enabled.
alias ss="open /System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/ScreenSaverEngine.app"

function uninstall_brews() {

  list=`brew list`
  for brew in $list; do
    if [[ $brew != "brew-cask" ]]; then
      brew uninstall $brew
    fi
  done

}

function uninstall_casks() {

  list=`brew cask list`
  for cask in $list; do
    echo $cask
    #brew cask uninstall $cask
  done

}
