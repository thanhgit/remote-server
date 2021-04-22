#! /bin/bash

frontend_repo_exist=$(ls | grep front-end-remote-server | wc -l)
if [ $frontend_repo_exist -lt 1 ]
then
    sh build-script.sh
else
    cd front-end-remote-server/
    echo "------------docker-compose logs -f-----------------"
    docker-compose logs -f
fi