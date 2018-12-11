FROM alpine:3.8

LABEL maintainer="The CoBloX developers team@coblox.tech"

ENV VERSION=0.17.0-r2

RUN sed -i -e 's/v3.8/edge/g' /etc/apk/repositories
RUN apk add --no-cache bitcoin=$VERSION bitcoin-cli=$VERSION

EXPOSE 8332 8333 18332 18333 18443 18444

ENTRYPOINT ["/usr/bin/bitcoind"]
