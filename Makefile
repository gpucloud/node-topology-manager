BIN_DIR=_output/cmd/bin

all: init build

build: init
	go build -o ${BIN_DIR}/node-topology-discovery ./cmd/node-topology-discovery
	go build -o ${BIN_DIR}/node-topology-sched ./cmd/node-topology-sched

verify:
	hack/verify-gofmt.sh

init:
	mkdir -p ${BIN_DIR}
clean:
	rm -fr ${BIN_DIR}

.PHONY: clean
