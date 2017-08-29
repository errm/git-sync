#!/bin/sh -e

if [ ! -d $TARGET_DIR ]; then
    mkdir -p $TARGET_DIR
fi

cd $TARGET_DIR

if [ -z $GIT_REPO ]; then
  echo "The GIT_REPO environment variable must be set"
  exit 1
fi

git clone $GIT_REPO $TARGET_DIR

if [ ! -z $GIT_BRANCH ]; then
  git checkout $GIT_BRANCH
fi

while true; do
  git pull || git reset --hard
  sleep $DELAY
done
