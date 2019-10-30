# Docker Compose stack

This is similar to Docker stack. All you need is a `docker-compose.yml`.

1. `build` step: `docker-compose build` to produce the image
2. `run` step: `docker-compose up --no-build` to start the container

## Features

- Again, no files. Behavior all depends on `docker-compose.yml` under the project root
- Limitation: A special network service is required. Refer to Options.

## Options

- `service` (string, required): The name of entrypoint service in your docker-compose.yml
  - Only its dependent services will be started
- `networkService` (string, required): This is a bit tricky. Due to a limitation of our platform, 
  a special service must exist in your `docker-compose.yml`. This option is set to the name of that service.
  - This service provides a shared network interface for all other services. 
    Make sure ALL YOUR SERVICES HAS `network_mode: service:network-service` set. Otherwise it will not work.
  - Under this assumption, all your services will share the same localhost, so no service name mapping is needed. 
    If you're familiar with Kubernetes, this is similar to how network is shared among containers in the same pod.
  - We'll work on lifting this limitation, so stay tuned!

## Example

This example demonstrate how `networkService` is used.

```docker-compose
version: '2.2'

services:
  network-service:
    image: busybox
    command: sleep infinity
    init: true
  redis:
    image: 'redis:alpine'
    network_mode: service:network-service
  server:
    build: server
    depends_on:
      - redis
    environment:
      - REDIS_HOST=localhost
    network_mode: service:network-service
```
