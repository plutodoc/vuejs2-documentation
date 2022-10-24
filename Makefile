.POSIX:
SHELL := /bin/bash
YARN :=  $(shell which yarn)
BIN_NAME := vuejs2-documentation
# Build the application
.PHONY: build
build: install
	@echo -e "\033[32mBuilding the application...\033[0m"
	$(YARN) run build
	@echo -e "\033[32mBuild finished.\033[0m"
# Clear the application
clear: install
	if [ -d "docs/.vuepress/dist" ]; then rm -rf "docs/.vuepress/dist"; fi
# Local development
dev:
	$(YARN) run dev
# Build docker image
docker:
	docker build -f ./build/docker/Dockerfile -t impossible98/$(BIN_NAME) .
# Install dependencies
install:
	@echo -e "\033[32mInstalling dependencies...\033[0m"
	$(YARN)
	@echo -e "\033[32mDependencies installed.\033[0m"
