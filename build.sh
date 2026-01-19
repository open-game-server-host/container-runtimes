#!/bin/bash

BRANCH=$1
if [ -z "$BRANCH" ]; then
   echo "branch not specified!"
   exit 1
fi

# Build each runtime image from each folder and upload the docker image to ghcr
# 'docker login' will need to be run before this script!
for folder in *; do
    if [ ! -d "$folder" ]; then
        continue
    fi

    if [ ! -f "$folder/Dockerfile" ]; then
        echo "No Dockerfile found at $folder!"
        continue
    fi

    IMAGE="ghcr.io/open-game-server-host/$folder:$BRANCH"

    docker build -t "$IMAGE" $folder
    docker push "$IMAGE"
done