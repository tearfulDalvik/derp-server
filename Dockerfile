FROM golang:1.17-alpine

MAINTAINER Gufeng Shen <hey@gufeng.sh>

RUN go install tailscale.com/cmd/derper@main

EXPOSE 443

CMD ["derper", "--hostname ${HOST}"]