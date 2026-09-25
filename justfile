build:
    go build ./...

test:
    go test -race ./...

lint:
    golangci-lint run

kind-up:
    kind create cluster --name timeline --config hack/kind-config.yaml

kind-down:
    kind delete cluster --name timeline
