.PHONY: all build

VERSION := 1.1.0

all: build

build:
	@if [ -f ./dist/sweetrice-webshell-plugin-${VERSION}.zip ]; then rm ./dist/webshell.zip; fi
	@if [ ! -d ./dist/ ]; then mkdir ./dist/; fi
	@cd ./plugin/; zip -r ../dist/webshell.zip ./
	@echo "[+] Saved to ./dist/webshell.zip"
