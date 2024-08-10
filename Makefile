.PHONY: build clean

.DEFAULT_GOAL := build

build: clean
	@./scripts/build.sh

clean:
	@./scripts/clean.sh
