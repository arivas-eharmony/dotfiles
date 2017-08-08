
function docker-machine-create () {
	docker-machine create --driver virtualbox default
}

function docker-machine-eval () {
	eval "$(docker-machine env default)"
}

function docker-machine-start () {
	docker-machine start default
}

function docker-start () {
	docker-machine-start
	docker-machine-eval
}