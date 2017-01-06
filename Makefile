
all:
	@docker rm -f hello || true
	@docker build -t hello .
	@docker run -d -p 5000:5000 --name hello hello
	@sleep 0.2
	@docker ps
	@curl localhost:5000/docker
	@docker rm -f hello
