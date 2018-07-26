FROM alpine:3.8

LABEL maintainer.0="Philipp Hoenisch philipp@tenx.tech" \
  maintainer.1="Thomas Eizinger thomas@tenx.tech" \
  maintainer.2="Franck Royer franck@coblox.tech" \
  maintainer.3="Lloyd Fournier lloyd@coblox.tech"

RUN apk add --no-cache bitcoin=0.16.1-r2

EXPOSE 8332 8333 18332 18333 18443 18444

ENTRYPOINT ["/usr/bin/bitcoind"]