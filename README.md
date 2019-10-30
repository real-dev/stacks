# Stacks

A stack is a term used to describe what "tech stack" is used in
Real Dev's task submission, for example, in `real.json`:

```jsonc
{
  "task": "hello-real-world",
  // Use NodeJS stack to run my code
  "stack": {
    "type": "nodejs"
  }
}
```

## What stacks are supported?

We currently have support for the following stacks:

- [`python3`](./python3) - Python 3.x
- [`nodejs`](./nodejs) - NodeJS
- [`docker` ](./docker)- Dockerfile
- [`docker-compose`](./docker-compose) - Docker Compose

Each stack type comes with some options. For example,
the version of Python or NodeJS can be configured.

Refer to README under each folder for details and options.

## Why open source?

Two reasons:

1. It helps to understand how things run, hence helps debugging.
   It also set examples for customizing the runtime with `docker` or `docker-compose` stack.
2. We are only familiar with a few things. We want to leverage the power of
   all creative devs in the community to support as many languages as possible. 

Please do consider adding your favorite framework/languages here!

## How to request my favorite language/contribute?

Create an issue in this repo. We'll try to make your language available.

Better yet, follow up with a pull request, it's quite easy with some basic knowledge of Docker.
Just follows these notes.

- There are two steps regarding running the code
  1. build step - Builds the code into a Docker image
  2. run step - Start a fresh container for each test case
- All the files under the stack setup will be copied into a folder called `.real`
  - The folder structure looks like
    ```
    <project-root>
      user submission files...
      .real/
        Dockerfile
        stack files...
    ```
  - It's built with `docker build -f .real/Dockerfile --build-arg <OPTION>=<VALUE> .`
- Create a `README.md` for the stack, explaining its purpose, and available options

Not so bad, right? Refer to `python3` and `nodejs` as examples.

## That's it!

Always feel free to reach out, here or on [our website](https://real.dev).

Enjoy being a Real Developer!
