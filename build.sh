#!/bin/bash

if [ $TRAVIS_PULL_REQUEST == "false" ]; then
  mvn clean deploy -Dgithub.global.oauth2Token=$github_token
fi