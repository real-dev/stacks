ARG PYTHON_VERSION=latest

FROM python:${PYTHON_VERSION}

WORKDIR /app/
COPY . /app/

RUN .real/build.sh

ARG MAIN
RUN test -n "${MAIN}"
ENV MAIN=${MAIN}

ENTRYPOINT [".real/start.sh"]
