FROM alpine:latest

# Install kubectl
RUN apk add -U curl
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
RUN chmod u+x kubectl && mv kubectl /bin/kubectl

# Install cfssl from edge/testing
RUN apk --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/ add cfssl
