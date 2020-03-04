.PHONY: build clean test

GOCMD=go
GOBUILD=$(GOCMD) build
GOCLEAN=$(GOCMD) clean
GOTEST=$(GOCMD) test
GOGET=$(GOCMD) get

OUTPUT=bin/idola

SRC=main.go slackapi.go

build:
	$(GOBUILD) -o $(OUTPUT) $(SRC)

run: build
	./$(OUTPUT)


clean:
	$(GOCLEAN) -v
	rm -f $(OUTPUT)

test:
	$(GOTEST) ./tests/... -v

