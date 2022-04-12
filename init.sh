#!/bin/bash

echo "check for echo lavagna_stable image.."; sleep 1;
if [[ "$(docker images -q lavagna_stable 2> /dev/null)" == "" ]]; then
  echo -e "don't have lavagane_stable image..\nstart multi-stage for lavagna_stable image !"
  docker build -t lavagna_stable .
else
  echo "lavagna_stable image exist "
fi
docker-compose up --build
echo "done"
