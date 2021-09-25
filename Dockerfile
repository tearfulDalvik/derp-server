FROM golang:1.17-alpine

RUN go install tailscale.com/cmd/derper@main

CMD ["derper", "--hostname ${HOST}"]