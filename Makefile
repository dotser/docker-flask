
all:
	@docker rm -f flask || true
	@docker build -t ptdorf/flask .
	@docker run -d -p 5000:5000 --name flask ptdorf/flask
	@sleep 0.2
	@docker ps
	@curl localhost:5000/flask
	@docker rm -f flask
	@docker push ptdorf/flask
