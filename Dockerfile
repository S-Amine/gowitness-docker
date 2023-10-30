FROM golang:1.21rc3-bullseye

ENV PATH $PATH:/usr/local/go/bin:$GOPATH/bin
ENV GOPATH /go
ENV GOROOT /usr/local/go

RUN go install github.com/sensepost/gowitness@latest

CMD gowitness server --address 0.0.0.0:7171
