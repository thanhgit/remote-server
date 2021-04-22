PHONY: start-server stop-server list-server log-server

start-server:
	sh script/build-script.sh

stop-server:
	sh script/clean.sh

list-server:
	sh script/list.sh

log-server:
	sh script/log.sh