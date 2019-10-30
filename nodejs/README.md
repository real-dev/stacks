# NodeJS stack

This stack expects a `package.json` under the project root, with a optional `build` and `start` command. 

- When building, it first install all the dependencies, then run `npm build` if there's one.
- At runtime, it starts your program with `npm start`.

## Features

- Installs some dependencies in the system for webpage tests with puppeteer (`setup.sh`)
- Uses `yarn` when `yarn.lock` exists (`install.sh`)
- Auto detects and run `build` script if it exists (`build.sh`)

## Options

- `version` (string, optional): The version of the node. Default to the `latest` release
