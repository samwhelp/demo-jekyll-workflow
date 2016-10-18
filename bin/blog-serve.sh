#!/usr/bin/env bash

THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)


THE_ROOT_DIR_PATH=$THE_BASE_DIR_PATH/..
THE_SOURCE_DIR_NAME=blog
THE_SOURCE_DIR_PATH=$THE_ROOT_DIR_PATH/$THE_SOURCE_DIR_NAME

## host
THE_SERVE_HOST=localhost
## THE_SERVE_HOST=127.0.0.1
## THE_SERVE_HOST=0.0.0.0

## port
THE_SERVE_PORT=8080


if ! [ -a $THE_SOURCE_DIR_PATH ]; then
	echo 'Dir Not Exists: blog'
	echo 'Please create it first.'
	echo '$ make create'
	echo 'Or clone from git first.'
	echo '$ make git-clone'
	exit 0;
fi


## 切換到部落格資料夾
cd $THE_SOURCE_DIR_PATH

## 觀看 serve 的 help
# jekyll serve -h

## simple command
# jekyll serve


## host and port
jekyll serve -H $THE_SERVE_HOST -P $THE_SERVE_PORT
