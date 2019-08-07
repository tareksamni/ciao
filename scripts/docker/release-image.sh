#!/usr/bin/env bash

docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
docker build -t $TRAVIS_REPO_SLUG:$TRAVIS_TAG .
docker tag $TRAVIS_REPO_SLUG:$TRAVIS_TAG $TRAVIS_REPO_SLUG:latest
docker push $TRAVIS_REPO_SLUG:$TRAVIS_TAG
docker push $TRAVIS_REPO_SLUG:latest
