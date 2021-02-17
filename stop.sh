#!/bin/bash

BUILD_VERSION=`jq -r .buildVersion ./etc/settings.json`

echo "BUILD_VERSION=$BUILD_VERSION" > .env

docker-compose down

rm -f .env