REPO_PATH="~/Repos"

alias showHiddenFiles="defaults write com.apple.finder AppleShowAllFiles YES && killall Finder"

alias hideHiddenFiles="defaults write com.apple.finder AppleShowAllFiles NO && killall Finder"

alias openFinderHere="open -a Finder ./"

# Repo Shortcuts

alias repos="cd $REPO_PATH && ls -af"

alias lwr="repos && cd lakewood-ranch && ls -af"

alias lwrc="repos && cd lwr-commercial && ls -af"

alias sonnys="repos && cd sonnys-bbq && ls -af"