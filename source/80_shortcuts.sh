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
export LWRC_HOST="push_dev@lwrc-grav"
export LWRC_LOCAL_PATH=$REPO_PATH/lwrc-grav
export LWRC_REMOTE_PATH="~/www.lwrcommercial.com"
export LWRC_REMOTE_PATH_PROD=$LWRC_REMOTE_PATH/prod
export LWRC_REMOTE_PATH_STAGE=$LWRC_REMOTE_PATH/stage
export LWRC_REMOTE_PATH_TEST=$LWRC_REMOTE_PATH/test

# Sonny's BBQ
export SONNYS_LOCAL_PATH=$REPO_PATH/sonnys-bbq

alias showHiddenFiles="defaults write com.apple.finder AppleShowAllFiles YES && killall Finder"

alias hideHiddenFiles="defaults write com.apple.finder AppleShowAllFiles NO && killall Finder"

alias openFinderHere="open -a Finder ./"

# Corkcicle
export CORKCICLE_LOCAL_PATH=$REPO_PATH/corkcicle

# Repo Shortcuts

alias repos="cd $REPO_PATH && ls -af"

alias lwr="cd $LWR_LOCAL_PATH && ls -af"

alias lwrc="cd $LWRC_LOCAL_PATH && ls -af"

alias sonnys="cd $SONNYS_LOCAL_PATH && ls -af"

alias crk="cd $CORKCICLE_LOCAL_PATH && ls -af"

# Push git deploy
function push_git_deploy() {
	git push $1 +HEAD:master
	git fetch $1
	git push origin --tags
}

# Docker shortcuts

function docker_remove_all_images() {
	docker rmi $(docker images -q)
}

function docker_remove_all_containers() {
	docker rm $(docker ps -q)
}

function docker_push_image() {
	docker login && docker build -t $1 $2 && docker push $1
}