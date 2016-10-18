#!/usr/bin/env bash

THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)


THE_ROOT_DIR_PATH=$THE_BASE_DIR_PATH/..
THE_SOURCE_DIR_NAME=blog
THE_SOURCE_DIR_PATH=$THE_ROOT_DIR_PATH/$THE_SOURCE_DIR_NAME


if [ -a $THE_SOURCE_DIR_PATH ]; then
	echo 'Dir Exists: blog'
	echo 'Please remove or move it first!'
	echo '$ mv blog blog.bak'
	exit 0;
fi


## 切換到Root資料夾
cd $THE_ROOT_DIR_PATH

jekyll new $THE_SOURCE_DIR_PATH
