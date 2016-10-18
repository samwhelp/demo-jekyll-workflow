#!/usr/bin/env bash

THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)


THE_ROOT_DIR_PATH=$THE_BASE_DIR_PATH/..
THE_SOURCE_DIR_NAME=blog
THE_SOURCE_DIR_PATH=$THE_ROOT_DIR_PATH/$THE_SOURCE_DIR_NAME
THE_SOURCE_GIT_URL=https://github.com/your_account/your-project.git


if [ -a $THE_SOURCE_DIR_PATH ]; then
	echo 'Dir Exists: blog'
	echo 'Please remove or move it first!'
	echo '$ mv blog blog.bak'
	exit 0;
fi

## 切換到根資料夾
cd $THE_ROOT_DIR_PATH

# git clone -b gh-pages $THE_SOURCE_GIT_URL
git clone $THE_SOURCE_GIT_URL $THE_SOURCE_DIR_PATH
