ARG GO_VERSION=latest

FROM golang:${GO_VERSION}

WORKDIR /app
COPY . ./

RUN go build -o main -v .

ENTRYPOINT [ "./main" ]
