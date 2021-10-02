FROM golang:1.17-alpine

MAINTAINER Gufeng Shen <hey@gufeng.sh>

RUN go install tailscale.com/cmd/derper@main

EXPOSE 443 3478/udp

RUN mkdir /certdir -p

CMD ["sh", "-c", "derper -hostname ${HOST} -certdir /certdir -certmode manual -stun | tee /derp.log"]
