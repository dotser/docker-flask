
all:
	# VBoxManage controlvm default natpf1 "flask-server,tcp,127.0.0.1,5000,,5000"
	docker rm -f hello-docker || true
	docker build -t hello-docker .
	docker run -d -P --name hello-docker hello-docker
	docker exec -it -t hello-docker curl localhost:5000/hello/docker
	docker rm -f hello-docker || true
