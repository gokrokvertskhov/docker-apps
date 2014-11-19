#!/bin/bash

#Params
# $1 - application name
# $2 - image name
# $3 - port number

APP=$1
IMAGE=$2
PORT=$3

cp -r template/ io.murano.docker.$APP

sed -i.bak "s/%APP%/$APP/g" io.murano.docker.$APP/manifest.yaml

mv io.murano.docker.$APP/Classes/DockerApp.murano io.murano.docker.$APP/Classes/Docker$APP.murano

sed -i.bak "s/%APP%/$APP/g" io.murano.docker.$APP/Classes/Docker$APP.murano
sed -i.bak "s/%APP%/$APP/g" io.murano.docker.$APP/UI/ui.yaml
sed -i.bak "s/%IMAGE%/$IMAGE/g" io.murano.docker.$APP/UI/ui.yaml
sed -i.bak "s/%PORT%/$PORT/g" io.murano.docker.$APP/UI/ui.yaml
