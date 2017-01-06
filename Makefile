
all:
	@docker rm -f hello-docker || true
	@docker build -t hello-docker .
	@docker run -d -p 5000:5000 --name hello-docker hello-docker
	@sleep 1
	@docker ps
	@curl localhost:5000/hello/docker
	@docker rm -f hello-docker
