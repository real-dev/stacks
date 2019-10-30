ARG NODE_VERSION=latest

FROM node:${NODE_VERSION}

WORKDIR /app/

# Setup step
COPY .real/* ./.real/
RUN .real/setup.sh

# Install step
COPY package*.json yarn.lock* ./
RUN .real/install.sh

# Build Step: npm/yarn build
COPY . /app/
RUN .real/build.sh

# Run step
ENTRYPOINT [".real/start.sh"]
