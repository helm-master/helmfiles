create:
	k3d cluster create -a 3 -p 8082:80@loadbalancer -v $$(pwd)/tmp:/var/lib/longhorn:shared

destroy:
	k3d cluster delete
