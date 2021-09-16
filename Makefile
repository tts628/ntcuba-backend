# Currently, default setting is fmt
.DEFAULT_GOAL := fmt

fmt:
	go fmt ./...
.PHONY:fmt

lint: fmt
	golangci-lint run
.PHONY:lint

vet: fmt
	go vet ./...
.PHONY:vet

# Unit Test
#	test: lint
#		go test .... (Coverage)
#	.PHONY:test

# Need more study for building
#	build: vet
#		go build
#	.PHONY:build