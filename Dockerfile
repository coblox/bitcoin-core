FROM alpine:edge

LABEL maintainer="The CoBloX developers team@coblox.tech"

ENV VERSION=0.21.1

RUN apk add --no-cache bitcoin~$VERSION bitcoin-cli~$VERSION

EXPOSE 8332 8333 18332 18333 18443 18444

ENTRYPOINT ["/usr/bin/bitcoind"]
