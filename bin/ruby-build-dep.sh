#!/usr/bin/env bash

THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)


## $ apt-cache showsrc ruby | grep Build-Depends:
## Build-Depends: debhelper (>= 9)


## $ apt-cache show debhelper | grep Depends:
## Depends: perl, file (>= 3.23), dpkg (>= 1.16.2), dpkg-dev (>= 1.18.2~), binutils, po-debconf, man-db (>= 2.5.1-1), libdpkg-perl (>= 1.17.14), dh-strip-nondeterminism, autotools-dev


## sudo apt-get build-dep ruby


sudo apt-get install build-essential debhelper libssl-dev libreadline-dev zlib1g-dev
