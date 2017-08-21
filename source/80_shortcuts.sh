REPO_PATH="~/Repos"

alias showHiddenFiles="defaults write com.apple.finder AppleShowAllFiles YES && killall Finder"

alias hideHiddenFiles="defaults write com.apple.finder AppleShowAllFiles NO && killall Finder"

alias openFinderHere="open -a Finder ./"

# Repo Shortcuts

alias repos="cd $REPO_PATH && ls -af"

alias lwr="repos && cd lakewood-ranch && ls -af"

alias lwrc="repos && cd lwr-commercial && ls -af"

alias sonnys="repos && cd sonnys-bbq && ls -af"

# Push git deploy
function push_git_deploy() {
	git push $1 +HEAD:master
	git fetch $1
	git push origin --tags
}

$LWR_LOCAL_PATH="$REPO_PATH/lakewood-ranch/www/app/uploads/"
$LWR_REMOTE_PATH_PROD="~/www.lakewoodranch.com/prod/www/app/uploads/"
# Rsync commands
function lwr_sync_up_prod() {
	rsync -av push_dev@lwr-www1:$LWR_LOCAL_PATH $LWR_REMOTE_PATH_PROD
}

function lwr_sync_down_prod() {
	rsync -av push_dev@lwr-www1:$LWR_REMOTE_PATH_PROD $LWR_LOCAL_PATH
}