#! /bin/bash

frontend_repo_exist=$(ls | grep front-end-remote-server | wc -l)
if [ $frontend_repo_exist -lt 1 ]
then
    git clone https://github.com/thanhgit/front-end-remote-server.git
else
    echo "Front-end-remote-server repo is exist"
fi

cd front-end-remote-server
./build-script.sh