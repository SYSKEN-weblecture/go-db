FROM golang:latest

RUN go get -u github.com/pressly/goose/cmd/goose
