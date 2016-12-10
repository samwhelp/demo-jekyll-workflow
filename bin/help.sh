#!/usr/bin/env bash

THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)

usage()
{
	echo ""
	echo "Usage: make [command]"
	echo
	cat <<EOF
Ex:

$ make rbenv-install
$ make rbenv-update

$ make ruby-build-dep
$ make ruby-install

$ make jekyll-install

$ make bundle-install

$ make blog-create
$ make serve
$ make build
$ make add
$ make commit
$ make push
$ make status
$ make log
$ make git-clone
$ make git-user-config

EOF
}

usage
