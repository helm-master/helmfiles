create:
	k3d cluster create -a 3 -p "9000:9000@loadbalancer"

destroy:
	k3d cluster delete

run:
	helmfile --file velero-helmfile.yaml --environment development apply
