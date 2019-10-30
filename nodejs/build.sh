#!/bin/sh

DIR="$(cd "$(dirname "$0")" && pwd)"

if [ -e "yarn.lock" ]; then
    BUILD_CMD="yarn build"
else
    BUILD_CMD="npm run-script build"
fi

HAS_BUILD=$(node $DIR/has-build.js; echo $?)

set -e

if [ "$HAS_BUILD" -eq "0" ]; then
    $BUILD_CMD
fi
