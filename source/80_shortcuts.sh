REPO_PATH="~/Repos"

alias repos="cd $REPO_PATH && ls -af"

alias lwrc="repos && cd lwr-commercial && ls -af"

alias showHiddenFiles="defaults write com.apple.finder AppleShowAllFiles YES && killall Finder"

alias hideHiddenFiles="defaults write com.apple.finder AppleShowAllFiles NO && killall Finder"