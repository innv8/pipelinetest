run:
	go run main.go
unit-tests:
	go test ./...
functional-tests:
	go test ./...
build:
	docker build -t pipelinetests .
docker-run:
	docker run pipelinetests