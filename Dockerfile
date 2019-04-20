FROM golang:latest

### Granitic Installation Part
RUN go get github.com/graniticio/granitic
WORKDIR /go/src/github.com/graniticio/granitic/
RUN cmd/install-tools.sh


### Some utilities
RUN apt update
RUN apt install -y tree less vim

### Workspace
RUN mkdir /workspace
WORKDIR /workspace

CMD bash
