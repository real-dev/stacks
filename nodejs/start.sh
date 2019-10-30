#!/bin/sh -e

if [ -n "$NO_START" ]; then
    exec $@
fi

if [ -e "yarn.lock" ]; then
    START_CMD="yarn -s start"
else
    START_CMD="npm run-script --silent start --"
fi

exec $START_CMD $@
