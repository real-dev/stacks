# Docker stack

This is an highly customized stack. All you need is a `Dockerfile`.

1. `build` step: `docker build` to produce the image
2. `run` step: `docker start` to start the container

There might be some confusion around how the test interact with the container.
Assume the test code "ssh" into the started container, and interact with your
code there directly, it acts exactly like without Docker in the picture.

When using this stack, testing your code typically involves exposing and publishing
some ports from the container to your local machine. Keep in mind that doesn't affect
how test runs when you submit.

## Features

- There's no files for this stack. Everything depends on your `Dockerfile`.
- To see how flexible this can be, check out the `docker` template for task `hello-real-world`.

## Options

- `dockerfile` (string, optional): The relative path to your `Dockerfile`. The filename can be changed too.
