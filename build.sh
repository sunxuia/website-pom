#!/bin/bash

if [[ $TRAVIS_PULL_REQUEST == "false" && $TRAVIS_BRANCH == "master" ]]; then
    cp .travis.settings.xml $HOME/.m2/settings.xml
    mvn clean deploy -Dskip.site=false
fi