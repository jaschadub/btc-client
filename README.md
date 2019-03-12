
# PAIcoin Docker container

A Docker container running PAIcoin as a service and exposing the REST API.

## Prerequisites

Install [Docker][docker], e.g. on Debian/Ubuntu based systems

    sudo apt install docker.io

... on Mac OS using [Homebrew][homebrew]

    brew cask install docker

Ensure that a user `dockeruser` with ID `10000` exists on your local system.

## Configuration

Modify `docker/paicoin.conf` according to your environment
(see [doc][paicoin-conf]).

Configure `rpcallowip=...` to allow the client/daemon to accept
RPC connections outside the localhost and set an RPC username (`rpcuser`)
and password (`rpcpassword`).

Make sure your config file includes the following line:

    txindex=1

## Usage

Building the docker container (tagged GitHub version of PAIcoin in `docker/Makefile`):

    ./docker/build.sh

Starting the container (DATA_DIR must belong to `dockeruser`):

    ./docker/start.sh DATA_DIR

Attaching to the container:

    ./docker/attach.sh

Showing the PAIcoin log file:

    ./docker/show_log.sh


[docker]: https://www.docker.com/
[paicoin-conf]: https://github.com/projectpai/paicoin/blob/master/doc/build-unix.md
