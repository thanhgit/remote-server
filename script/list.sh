#! /bin/bash

frontend_repo_exist=$(ls | grep front-end-remote-server | wc -l)
if [ $frontend_repo_exist -lt 1 ]
then
    sh build-script.sh
else
    cd front-end-remote-server/
    echo "------------docker-compose ps-----------------"
    docker-compose ps
    echo "------------Front-end IP----------------------"
    IP=$(hostname -I | awk '{print $1}')
    echo http://$IP
fi