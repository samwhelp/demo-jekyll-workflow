#!/usr/bin/env bash

THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)


THE_ROOT_DIR_PATH=$THE_BASE_DIR_PATH/..
THE_SOURCE_DIR_NAME=blog
THE_SOURCE_DIR_PATH=$THE_ROOT_DIR_PATH/$THE_SOURCE_DIR_NAME


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

bundle install
