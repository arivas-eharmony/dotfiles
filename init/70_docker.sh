source $DOTFILES/source/60_php.sh

if [[ "$(type -P docker-machine)" && "$(type -P virtualbox)"]]; then
	docker-machine create --driver virtualbox default
fi