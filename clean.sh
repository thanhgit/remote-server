#! /bin/bash

frontend_repo_exist=$(ls | grep front-end-remote-server | wc -l)
if [ $frontend_repo_exist -lt 1 ]
then
    echo "Repo was deleted"
else
    cd front-end-remote-server/
    docker-compose down
    cd ..
    rm -rf front-end-remote-server/
fi