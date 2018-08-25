# Bitcoin Core

[![Docker Automated build](https://img.shields.io/docker/automated/coblox/bitcoin-core.svg)](https://hub.docker.com/r/coblox/bitcoin-core/)
[![Docker Build Status](https://img.shields.io/docker/build/coblox/bitcoin-core.svg)](https://hub.docker.com/r/coblox/bitcoin-core/)

An unopinionated docker image of bitcoin core.

## Usage

Simply use it the way you would use the `bitcoind` image. All arguments are passed to `bitcoind`.

For example:

`docker run coblox/bitcoin-core -printtoconsole`
