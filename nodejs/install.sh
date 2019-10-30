#!/bin/sh -e

if [ -e "yarn.lock" ]; then
    INSTALL_CMD="yarn install"
else
    INSTALL_CMD="npm install"
fi

$INSTALL_CMD
