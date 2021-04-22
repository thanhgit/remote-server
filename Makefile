PHONY: start-server stop-server list-server

start-server:
	sh build-script.sh

stop-server:
	sh clean.sh

list-server:
	sh list.sh