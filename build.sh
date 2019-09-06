#!/bin/bash

if [[ $TRAVIS_PULL_REQUEST == "false" && $TRAVIS_BRANCH == "master" ]]; then
    mvn clean deploy -Dskip.site=false -Dgithub.global.oauth2Token=$github_token
fi