# Bitcoin Core

[![Docker Automated build](https://img.shields.io/docker/automated/coblox/bitcoin-core.svg)](https://hub.docker.com/r/coblox/bitcoin-core/)
[![Docker Build Status](https://img.shields.io/docker/build/coblox/bitcoin-core.svg)](https://hub.docker.com/r/coblox/bitcoin-core/)

An unopinionated docker image of bitcoin-core (bitcoind).

## Usage

Simply use it the way you would use the `bitcoind` binary. All arguments are passed through to `bitcoind`.

For example:

`docker run coblox/bitcoin-core -regtest`

## Bitcoin-CLI

The image also has bitcoin-cli installed. It is considered best practise to use the default ports of services inside docker containers. If you adhere to that, it is very easy to use bitcoin-cli with this image. Given a running container simple exec a shell into it:

`docker exec -it CONTAINER_HASH /bin/sh`

Depending on whether you started your container with `-regtest`, `-testnet` or `-mainnet`, simply pass this flag to `bitcoin-cli` as well and you are good to go.
For example, given you started the container like this:

`docker run -d coblox/bitcoin-core -regtest`

Simply exec into the container:

``docker exec -it CONTAINER_HASH /bin/sh``

And use `bitcoin-cli`:

`bitcoin-cli -regtest getblockchaininfo`
