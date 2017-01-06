
all:
	@docker rm -f flask || true
	@docker build -t flask .
	@docker run -d -p 5000:5000 --name flask flask
	@sleep 0.2
	@curl localhost:5000/flask
	@docker rm -f flask
