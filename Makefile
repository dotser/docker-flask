
all: ### Builds, runs and tests this image
	@docker rm -f flask || true
	@docker build -t flask .
	@docker run -d -p 5000:5000 --name flask flask
	@sleep 0.2
	@curl localhost:5000/flask
	@docker rm -f flask

help: ### Shows this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?### "}; {printf "\033[36m%-10s\033[0m %s\n", $$1, $$2}'

.PHONY: all help
