#!/bin/bash

set -e

if [[ "$TRAVIS_BRANCH" == revert-* ]]; then
	echo -e "\e[36m\e[1mBuild triggered for reversion branch \"${TRAVIS_BRANCH}\" - running nothing."
	exit 0
fi

if [ "$TRAVIS_PULL_REQUEST" != "false" ]; then
	echo -e "\e[36m\e[1mBuild triggered for PR #${TRAVIS_PULL_REQUEST} to branch \"${TRAVIS_BRANCH}\" - only running test."
	exit 0
fi

if [ -n "$TRAVIS_TAG" ]; then
	echo -e "\e[36m\e[1mBuild triggered for tag \"${TRAVIS_TAG}\"."
else
	echo -e "\e[36m\e[1mBuild triggered for branch \"${TRAVIS_BRANCH}\"."
fi
