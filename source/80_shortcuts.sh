export REPO_PATH=~/Repos

export WP_UPLOADS_PATH=www/app/uploads/

# Lakewood Ranch
export LWR_HOST="push_dev@lwr-www1"
export LWR_LOCAL_PATH=$REPO_PATH/lakewood-ranch
export LWR_REMOTE_PATH="~/www.lakewoodranch.com"
export LWR_REMOTE_PATH_PROD=$LWR_REMOTE_PATH/prod
export LWR_REMOTE_PATH_STAGE=$LWR_REMOTE_PATH/stage
export LWR_LOCAL_UPLOADS_PATH=$LWR_LOCAL_PATH/$WP_UPLOADS_PATH
export LWR_REMOTE_UPLOADS_PATH_STAGE=$LWR_REMOTE_PATH_STAGE/$WP_UPLOADS_PATH
export LWR_REMOTE_UPLOADS_PATH_PROD=$LWR_REMOTE_PATH_PROD/$WP_UPLOADS_PATH

# Lakewood Ranch Commercial
export LWRC_LOCAL_PATH=$REPO_PATH/lwr-commercial
export LWRC_LOCAL_UPLOADS_PATH=$LWRC_LOCAL_PATH/$WP_UPLOADS_PATH

# Sonny's BBQ
export SONNYS_LOCAL_PATH=$REPO_PATH/sonnys-bbq

alias showHiddenFiles="defaults write com.apple.finder AppleShowAllFiles YES && killall Finder"

alias hideHiddenFiles="defaults write com.apple.finder AppleShowAllFiles NO && killall Finder"

alias openFinderHere="open -a Finder ./"

# Repo Shortcuts

alias repos="cd $REPO_PATH && ls -af"

alias lwr="cd $LWR_LOCAL_PATH && ls -af"

alias lwrc="cd $LWRC_LOCAL_PATH && ls -af"

alias sonnys="cd $SONNYS_LOCAL_PATH && ls -af"

# Push git deploy
function push_git_deploy() {
	git push $1 +HEAD:master
	git fetch $1
	git push origin --tags
}

# Rsync commands
function lwr_sync_up_prod() {
	rsync -av $LWR_LOCAL_UPLOADS_PATH $LWR_HOST:$LWR_REMOTE_PATH_PROD
}
function lwr_sync_down_prod() {
	rsync -av $LWR_HOST:$LWR_REMOTE_PATH_PROD $LWR_LOCAL_UPLOADS_PATH
}
function lwr_sync_up_stage() {
	rsync -av $LWR_LOCAL_UPLOADS_PATH $LWR_HOST:$LWR_REMOTE_PATH_STAGE
}
function lwr_sync_down_stage() {
	rsync -av $LWR_HOST:$LWR_REMOTE_PATH_STAGE $LWR_LOCAL_UPLOADS_PATH
}